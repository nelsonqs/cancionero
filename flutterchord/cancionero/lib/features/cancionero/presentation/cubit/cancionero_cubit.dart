import 'package:cancionero/model/isar/cancionero.dart';
import 'package:cancionero/models/cancionero_title.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'cancionero_state.dart';

class CancioneroCubit extends Cubit<CancioneroState> {
  CancioneroCubit() : super(CancioneroState());
  Future<void> getDataList(BuildContext context) async {
    List<CancioneroTitle> dataList = [];
    dataList.add(CancioneroTitle(
        number: '1',
        title: 'ACLAMAD AL SEÑOR',
        gender: 'Gozo',
        content:
            '[Gm]La tierra [F]está llena [Gm]de [F]la misericordia del[Gm][F] Señor \n Por su [Gm]palab[F]ra fueron[Gm] hechos[F] los cielos[Gm] \n Y las agua[F]s del mar. [Gm][-G] \n /Aclamad [Cm]al Señor con [F]los instru[Bb]mentos  [Gm] \n Aclamad[Cm] al Señor con[D7] júbilo  [Bb] [G] \n Aclamad[Cm] al Señor con [F]los instrumen[Bb]tos  [Gm] \n Cantadl[D7]e un cántico nuevo.[Gm]/'));
    dataList.add(CancioneroTitle(
        number: '2',
        title: 'LA ALEGRIA',
        gender: 'Gozo',
        content:
            '/La alegría está en el corazón De aquel que conoce en Jesús \nLa verdadera paz está en aquel Que ya conoce a Jesús. \nQue sentimiento más precioso, Que viene del señor \nEs el amor de aquel que ya conoce a Jesús./ \nAleluya, aleluya, aleluya, aleluya \nQue sentimiento más precioso, Que viene del señor \n/Es el amor de aquel que ya conoce a Jesús./ \nAleluya Amen, aleluya amen.'));
    dataList.add(CancioneroTitle(
        number: '3', title: 'ABRE MIS OJOS', gender: 'Gozo', content: 'E\nAbre mis ojos, oh, Cristo\n B\nAbre mis ojos, Señor\n                  A\nYo quiero verte\n                  E\nYo quiero verte\n                  B                             C#m\nYo quiero verte enaltecido, oh Dios\n      A                          \nRadiante en toda tu gloria\n     B                        C#m            A\nDerrama hoy tu poder sobre tu pueblo \n             B\nPadre Santo\n E\nSanto, santo, santo\n B\nSanto, santo, santo\n A\nSanto, santo, santo\n                  E\nYo quiero verte\n'));

    chargeCancioneroState(dataList);
  }

  void chargeCancioneroState(response1) {
    emit(state.copyWith(dataList: response1));
  }

  getCancionero(String idCancionero) async {
    List<CancioneroTitle> dataList = state.dataList;
    if (dataList.isNotEmpty) {
      CancioneroTitle? cancionero = dataList
          .firstWhere((cancionero) => cancionero.number == idCancionero);
      return cancionero;
    } else {
      return null;
    }
  }

  changedTransposeIncrement(int p1) {
    emit(state.copyWith(transposeIncrement: p1));
  }

  changedScrollSpeed(int p1) {
    emit(state.copyWith(scrollSpeed: p1));
  }

  updateCancionero(String idCancionero, String content) async {
    List<CancioneroTitle> dataList = state.dataList;
    int indice =
        dataList.indexWhere((cancionero) => cancionero.number == idCancionero);
    CancioneroTitle dataUpdate = dataList[indice];
    dataUpdate.content = content;
    dataList[indice] = dataUpdate;
    if (indice != -1) {
      emit(state.copyWith(dataList: dataList));
      debugPrint('Elemento actualizado en el índice $indice');
    } else {
      debugPrint('No se encontró ningún objeto con el ID: $idCancionero');
    }
  }
}
