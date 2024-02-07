import 'package:cancionero/models/cancionero_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'cancionero_state.dart';

class CancioneroCubit extends Cubit<CancioneroState> {
  CancioneroCubit() : super(const CancioneroState(dataList: []));
  Future<void> getDataList(BuildContext context) async {
    List<CancioneroTitle> dataList = [];
    dataList.add(CancioneroTitle(number: '1', title: 'ACLAMAD AL SEÑOR', gender: 'Gozo'));
    dataList.add(CancioneroTitle(number: '2', title: 'LA ALEGRIA', gender: 'Gozo'));
    dataList.add(CancioneroTitle(number: '3', title: 'ABRE MIS OJOS', gender: 'Gozo'));
    
    chargeMoraList(dataList);
  }

  void chargeMoraList(response1) {
    emit(state.copyWith(dataList: response1));
  }
}
