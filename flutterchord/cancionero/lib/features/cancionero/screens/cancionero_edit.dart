import 'package:cancionero/features/cancionero/presentation/cubit/cancionero_cubit.dart';
import 'package:cancionero/models/cancionero_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CancioneroEdit extends StatelessWidget {
  const CancioneroEdit({
    Key? key,
    required this.index,
  }) : super(key: key);
  final String index;

  final textStyle = const TextStyle(fontSize: 13, color: Colors.black);

   @override
  Widget build(BuildContext context) {
    final dataBlock = context.watch<CancioneroCubit>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Editar'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(12.0),
              color: Colors.black,
              child: TextFormField(
                initialValue: dataBlock.state.dataList.firstWhere((cancionero) => cancionero.number == index).content,
                style: textStyle,
                maxLines: 50,
                onChanged: (value) {
                  dataBlock.updateCancionero(index, value);
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          context.pop();
                        },
                        child: const Text('Aceptar'),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
