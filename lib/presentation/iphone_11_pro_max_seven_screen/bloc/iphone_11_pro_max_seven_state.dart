// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_seven_bloc.dart';

/// Represents the state of Iphone11ProMaxSeven in the application.
class Iphone11ProMaxSevenState extends Equatable {
  Iphone11ProMaxSevenState({this.iphone11ProMaxSevenModelObj});

  Iphone11ProMaxSevenModel? iphone11ProMaxSevenModelObj;

  @override
  List<Object?> get props => [
        iphone11ProMaxSevenModelObj,
      ];
  Iphone11ProMaxSevenState copyWith(
      {Iphone11ProMaxSevenModel? iphone11ProMaxSevenModelObj}) {
    return Iphone11ProMaxSevenState(
      iphone11ProMaxSevenModelObj:
          iphone11ProMaxSevenModelObj ?? this.iphone11ProMaxSevenModelObj,
    );
  }
}
