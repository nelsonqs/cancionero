part of 'cancionero_cubit.dart';

class CancioneroState extends Equatable {
  final List<CancioneroTitle> dataList;
  final int transposeIncrement;
  final int scrollSpeed;
  
  CancioneroState({List<CancioneroTitle>? dataList, 
  this.scrollSpeed = 0, 
  this.transposeIncrement = 0
  }): dataList = dataList ?? [];
  
  CancioneroState copyWith({
    List<CancioneroTitle>? dataList,
    int? transposeIncrement,
    int? scrollSpeed,
  }) =>
      CancioneroState(
        dataList: dataList ?? this.dataList,
        transposeIncrement: transposeIncrement ?? this.transposeIncrement,
        scrollSpeed: scrollSpeed ?? this.scrollSpeed
      );


  @override
  List<Object?> get props => [transposeIncrement, scrollSpeed];
}


