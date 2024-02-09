import 'package:cancionero/common/widgets/custom_card.dart';
import 'package:cancionero/common/widgets/expanded_text.dart';
import 'package:cancionero/core/app_asset.dart';
import 'package:cancionero/core/app_color.dart';
import 'package:cancionero/core/app_style.dart';
import 'package:cancionero/features/cancionero/presentation/cubit/cancionero_cubit.dart';
import 'package:cancionero/models/cancionero_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:searchable_listview/searchable_listview.dart';

class CancioneroListScreen extends StatelessWidget {
  CancioneroListScreen({
    super.key,
    this.codAsesor,
  });
  final String? codAsesor;

  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CancioneroCubit>(context).getDataList(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listado Canciones'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_applications),
            onPressed: () {
              /* FALTA HACER */
              context.read<CancioneroCubit>().getDataList(context);
            },
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: simpleSearchWithSort(context),
            ),
          ),
        ],
      ),
    );
  }

  Widget simpleSearchWithSort(BuildContext context) {
    final dataList = context.watch<CancioneroCubit>().state.dataList;
    return SearchableList<CancioneroTitle>(
      displaySortWidget: true,
      sortPredicate: (a, b) => a.title.compareTo(b.title),
      builder: (list, index, item) {
        return CancioneroItem(cancionItem: item);
      },
      initialList: dataList,
      filter: (q) {
        return dataList
            .where((element) =>
                element.number.toLowerCase().contains(q) ||
                element.title.toLowerCase().toString().contains(q))
            .toList();
      },
      inputDecoration: InputDecoration(
        labelText: "Buscar tema",
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.blue,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }

  Widget renderSimpleSearchableList(BuildContext context) {
    final dataList = context.watch<CancioneroCubit>().state.dataList;
    return SearchableList<CancioneroTitle>(
      seperatorBuilder: (context, index) {
        return const Divider();
      },
      style: const TextStyle(fontSize: 25),
      builder: (list, index, item) {
        return CancioneroItem(cancionItem: item);
      },
      errorWidget: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error,
            color: Colors.red,
          ),
          SizedBox(
            height: 20,
          ),
          Text('Ocurrio un error mientras se mmostraba las canciones')
        ],
      ),
      initialList: dataList,
      filter: (q) {
        return dataList
            .where((element) =>
                element.number.toLowerCase().contains(q) ||
                element.title.toString().contains(q))
            .toList();
      },
      reverse: true,
      emptyWidget: const EmptyView(),
      onRefresh: () async {},
      onItemSelected: (CancioneroTitle item) {},
      inputDecoration: InputDecoration(
        labelText: "Search Actor",
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.blue,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      closeKeyboardWhenScrolling: true,
    );
  }
}

/*
BlocBuilder<CancioneroCubit, CancioneroState>(
            builder: (context, snapshot) {
          final data = snapshot;
          return SingleChildScrollView(
            reverse: true,
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              reverse: true,
              itemCount: data.dataList.length,
              itemBuilder: ((context, index) {
                CancioneroTitle itemCancionero = data.dataList[index];
                String dateString = itemCancionero.number;
                return Card(
                  shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(10))),
                  margin: const EdgeInsets.all(10),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Title: ${itemCancionero.title}',
                                      style: h4StyleLight),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Fecha Registro:$dateString',
                                      style: h4StyleLight),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    itemCancionero.gender,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        var param1 = itemCancionero.number;
                                        context.push("/detail/$param1");
                                      },
                                      icon: Image.asset(
                                          AppAsset.icoPerfilFilled,
                                          height: 31,
                                          width: 31)),
                                  IconButton(
                                      onPressed: () {
                                        var param1 = itemCancionero.number;
                                        context.push("/update/$param1");
                                      },
                                      icon: Image.asset(
                                          AppAsset.icoMenuFilled,
                                          height: 31,
                                          width: 31)),        
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          );
        })

 */

class CancioneroItem extends StatelessWidget {
  final CancioneroTitle cancionItem;

  const CancioneroItem({
    Key? key,
    required this.cancionItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Row(
                    children: [
                      Text(
                        'Nro: ${cancionItem.number}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: h4StyleRegular,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ExpandedText(
              style: h4StyleBold,
              labelText: 'Tema: ${cancionItem.title}',
            ),
            const SizedBox(height: 10),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                onPressed: () {
                  var param1 = cancionItem.number;
                  context.push("/update/$param1");
                },
                icon: const Icon(
                  Icons.info,
                  color: AppColors.blueFubode,
                  size: 30,
                )),
          ],
        ),
      ],
    );

    /*Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Icon(
              Icons.star,
              color: Colors.yellow[700],
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Número: ${cancionItem.number}',
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Título: ${cancionItem.title}',
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );*/
  }
}

class EmptyView extends StatelessWidget {
  const EmptyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.error,
          color: Colors.red,
        ),
        Text('Hno(a) No hay tema para mostrar con el criterio ingresado :( '),
      ],
    );
  }
}
