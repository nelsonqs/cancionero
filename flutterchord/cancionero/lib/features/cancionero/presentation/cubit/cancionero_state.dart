part of 'cancionero_cubit.dart';

class CancioneroState extends Equatable {
  final List<dynamic> dataList;
  
  const CancioneroState({required this.dataList});
  
  CancioneroState copyWith({
    List<dynamic>? dataList,
  }) =>
      CancioneroState(
        dataList: dataList ?? this.dataList,
      );


  @override
  List<Object> get props => [dataList];
}


