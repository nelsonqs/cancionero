import 'package:cancionero/features/cancionero/presentation/cubit/cancionero_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chord/flutter_chord.dart';

class CancioneroScreen extends StatelessWidget {
  const CancioneroScreen({
    Key? key,
    required this.index,
  }) : super(key: key);

  final String index;
  final chordStyle = const TextStyle(fontSize: 16, color: Colors.green);
  final textStyle = const TextStyle(fontSize: 16, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    final dataBlock = context.watch<CancioneroCubit>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cancionero'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(12.0),
              color: Colors.black,
              child: LyricsRenderer(
                showChord: false,
                lyrics: dataBlock.state.dataList
                    .firstWhere((cancionero) => cancionero.number == index)
                    .content,
                textStyle: textStyle,
                chordStyle: chordStyle,
                onTapChord: (String chord) {
                  debugPrint('pressed chord: $chord');
                },
                transposeIncrement: dataBlock.state.transposeIncrement,
                scrollSpeed: dataBlock.state.scrollSpeed,
                widgetPadding: 24,
                lineHeight: 4,
                horizontalAlignment: CrossAxisAlignment.start,
                leadingWidget: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                  child: Text(
                    dataBlock.state.dataList
                        .firstWhere((cancionero) => cancionero.number == index)
                        .title,
                    style: chordStyle,
                    // textAlign: TextAlign.center,
                  ),
                ),
                trailingWidget: Text(
                  'Trailing Widget',
                  style: chordStyle,
                ),
              ),
            ),
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          int value = dataBlock.state.transposeIncrement;
                          value--;
                          dataBlock.changedTransposeIncrement(value);
                        },
                        child: const Text('-',
                            style:
                                TextStyle(fontSize: 14, color: Colors.white)),
                      ),
                      const SizedBox(width: 5),
                      Text(dataBlock.state.transposeIncrement.toString()),
                      const SizedBox(width: 5),
                      ElevatedButton(
                        onPressed: () {
                          int value = dataBlock.state.transposeIncrement;
                          value++;
                          dataBlock.changedTransposeIncrement(value);
                        },
                        child: const Text('+',
                            style:
                                TextStyle(fontSize: 14, color: Colors.white)),
                      ),
                    ],
                  ),
                  const Text('Transponer Nota')
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: dataBlock.state.scrollSpeed <= 0
                            ? null
                            : () {
                                int value = dataBlock.state.scrollSpeed;
                                value--;
                                dataBlock.changedScrollSpeed(value);
                              },
                        child: const Text('-',
                            style:
                                TextStyle(fontSize: 14, color: Colors.white)),
                      ),
                      const SizedBox(width: 5),
                      Text(dataBlock.state.scrollSpeed.toString()),
                      const SizedBox(width: 5),
                      ElevatedButton(
                        onPressed: () {
                          int value = dataBlock.state.scrollSpeed;
                          value++;
                          dataBlock.changedScrollSpeed(value);
                        },
                        child: const Text('+',
                            style:
                                TextStyle(fontSize: 14, color: Colors.white)),
                      ),
                    ],
                  ),
                  const Text('Auto Scroll')
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
