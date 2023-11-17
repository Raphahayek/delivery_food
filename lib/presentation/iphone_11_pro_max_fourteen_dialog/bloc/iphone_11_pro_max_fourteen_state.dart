// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_fourteen_bloc.dart';

/// Represents the state of Iphone11ProMaxFourteen in the application.
class Iphone11ProMaxFourteenState extends Equatable {
  Iphone11ProMaxFourteenState({this.iphone11ProMaxFourteenModelObj});

  Iphone11ProMaxFourteenModel? iphone11ProMaxFourteenModelObj;

  @override
  List<Object?> get props => [
        iphone11ProMaxFourteenModelObj,
      ];
  Iphone11ProMaxFourteenState copyWith(
      {Iphone11ProMaxFourteenModel? iphone11ProMaxFourteenModelObj}) {
    return Iphone11ProMaxFourteenState(
      iphone11ProMaxFourteenModelObj:
          iphone11ProMaxFourteenModelObj ?? this.iphone11ProMaxFourteenModelObj,
    );
  }
}
