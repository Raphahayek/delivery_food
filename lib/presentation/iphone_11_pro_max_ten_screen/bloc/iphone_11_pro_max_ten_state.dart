// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_ten_bloc.dart';

/// Represents the state of Iphone11ProMaxTen in the application.
class Iphone11ProMaxTenState extends Equatable {
  Iphone11ProMaxTenState({this.iphone11ProMaxTenModelObj});

  Iphone11ProMaxTenModel? iphone11ProMaxTenModelObj;

  @override
  List<Object?> get props => [
        iphone11ProMaxTenModelObj,
      ];
  Iphone11ProMaxTenState copyWith(
      {Iphone11ProMaxTenModel? iphone11ProMaxTenModelObj}) {
    return Iphone11ProMaxTenState(
      iphone11ProMaxTenModelObj:
          iphone11ProMaxTenModelObj ?? this.iphone11ProMaxTenModelObj,
    );
  }
}
