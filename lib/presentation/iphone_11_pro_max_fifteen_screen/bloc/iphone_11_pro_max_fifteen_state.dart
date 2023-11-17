// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_fifteen_bloc.dart';

/// Represents the state of Iphone11ProMaxFifteen in the application.
class Iphone11ProMaxFifteenState extends Equatable {
  Iphone11ProMaxFifteenState({this.iphone11ProMaxFifteenModelObj});

  Iphone11ProMaxFifteenModel? iphone11ProMaxFifteenModelObj;

  @override
  List<Object?> get props => [
        iphone11ProMaxFifteenModelObj,
      ];
  Iphone11ProMaxFifteenState copyWith(
      {Iphone11ProMaxFifteenModel? iphone11ProMaxFifteenModelObj}) {
    return Iphone11ProMaxFifteenState(
      iphone11ProMaxFifteenModelObj:
          iphone11ProMaxFifteenModelObj ?? this.iphone11ProMaxFifteenModelObj,
    );
  }
}
