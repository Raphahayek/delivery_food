// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_sixteen_bloc.dart';

/// Represents the state of Iphone11ProMaxSixteen in the application.
class Iphone11ProMaxSixteenState extends Equatable {
  Iphone11ProMaxSixteenState({this.iphone11ProMaxSixteenModelObj});

  Iphone11ProMaxSixteenModel? iphone11ProMaxSixteenModelObj;

  @override
  List<Object?> get props => [
        iphone11ProMaxSixteenModelObj,
      ];
  Iphone11ProMaxSixteenState copyWith(
      {Iphone11ProMaxSixteenModel? iphone11ProMaxSixteenModelObj}) {
    return Iphone11ProMaxSixteenState(
      iphone11ProMaxSixteenModelObj:
          iphone11ProMaxSixteenModelObj ?? this.iphone11ProMaxSixteenModelObj,
    );
  }
}
