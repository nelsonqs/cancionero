import 'package:cancionero/common/router/app_router.dart';
import 'package:cancionero/core/app_theme.dart';
import 'package:cancionero/features/cancionero/presentation/cubit/cancionero_cubit.dart';
import 'package:cancionero/model/isar/cancionero.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chord/flutter_chord.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_localization/flutter_localization.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  final dirdos = await getApplicationDocumentsDirectory();
  if (dirdos.existsSync()) {
    final isar = await Isar.open([CancioneroSchema], directory: dirdos.path);
    runApp(MyApp(isar: isar));
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.isar}) : super(key: key);
  final Isar isar;
  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldMessengerState>();
    final FlutterLocalization _localization = FlutterLocalization.instance;
    FlutterNativeSplash.remove();
    return MultiBlocProvider(
      providers: [
        BlocProvider<CancioneroCubit>(
            create: (BuildContext context) => CancioneroCubit())
      ],
      child: MaterialApp.router(
          scaffoldMessengerKey: scaffoldKey,
          title: 'Cancionero ICEL',
          debugShowCheckedModeBanner: false,
          theme: AppThemes.appThemeData[AppTheme.lightTheme]!,
          routerConfig: appRouter),
    );

    /*return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Chord',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: HomePage(),
    );*/
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final chordStyle = TextStyle(fontSize: 20, color: Colors.green);
  final textStyle = TextStyle(fontSize: 18, color: Colors.white);
  String _lyrics = '';
  int transposeIncrement = 0;
  int scrollSpeed = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Chord Example'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(12.0),
              color: Colors.teal,
              child: TextFormField(
                initialValue: _lyrics,
                style: textStyle,
                maxLines: 50,
                onChanged: (value) {
                  setState(() {
                    _lyrics = value;
                  });
                },
              ),
            ),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            transposeIncrement--;
                          });
                        },
                        child: Text('-'),
                      ),
                      SizedBox(width: 5),
                      Text('$transposeIncrement'),
                      SizedBox(width: 5),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            transposeIncrement++;
                          });
                        },
                        child: Text('+'),
                      ),
                    ],
                  ),
                  Text('Transpose')
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: scrollSpeed <= 0
                            ? null
                            : () {
                                setState(() {
                                  scrollSpeed--;
                                });
                              },
                        child: Text('-'),
                      ),
                      SizedBox(width: 5),
                      Text('$scrollSpeed'),
                      SizedBox(width: 5),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            scrollSpeed++;
                          });
                        },
                        child: Text('+'),
                      ),
                    ],
                  ),
                  Text('Auto Scroll')
                ],
              ),
            ],
          ),
          Divider(),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(12.0),
              color: Colors.black,
              child: LyricsRenderer(
                lyrics: _lyrics,
                textStyle: textStyle,
                chordStyle: chordStyle,
                onTapChord: (String chord) {
                  print('pressed chord: $chord');
                },
                transposeIncrement: transposeIncrement,
                scrollSpeed: scrollSpeed,
                widgetPadding: 24,
                lineHeight: 4,
                horizontalAlignment: CrossAxisAlignment.start,
                leadingWidget: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                  child: Text(
                    'Leading Widget',
                    style: chordStyle,
                  ),
                ),
                trailingWidget: Text(
                  'Trailing Widget',
                  style: chordStyle,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _lyrics = '''
[C]Give me Freedom, [F]Give me fire
[Am]Give me reason, [G]Take me higher
[C]See the champions [F], Take the field now
[Am]Unify us, [G]make us feel proud
 
[C]In the streets our, [F]hands are lifting
[Am]As we lose our, [G]inhibition
[C]Celebration, [F]its around us
[Am]Every nation, [G]all around us
''';
  }
}
