import 'package:cancionero/core/app_asset.dart';
import 'package:cancionero/core/app_style.dart';
import 'package:cancionero/features/cancionero/presentation/cubit/cancionero_cubit.dart';
import 'package:cancionero/models/cancionero_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

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
        body: BlocBuilder<CancioneroCubit, CancioneroState>(
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
        }));
  }
}
