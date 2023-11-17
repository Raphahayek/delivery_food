// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_three_bloc.dart';

/// Represents the state of Iphone11ProMaxThree in the application.
class Iphone11ProMaxThreeState extends Equatable {
  Iphone11ProMaxThreeState({this.iphone11ProMaxThreeModelObj});

  Iphone11ProMaxThreeModel? iphone11ProMaxThreeModelObj;

  @override
  List<Object?> get props => [
        iphone11ProMaxThreeModelObj,
      ];
  Iphone11ProMaxThreeState copyWith(
      {Iphone11ProMaxThreeModel? iphone11ProMaxThreeModelObj}) {
    return Iphone11ProMaxThreeState(
      iphone11ProMaxThreeModelObj:
          iphone11ProMaxThreeModelObj ?? this.iphone11ProMaxThreeModelObj,
    );
  }
}
