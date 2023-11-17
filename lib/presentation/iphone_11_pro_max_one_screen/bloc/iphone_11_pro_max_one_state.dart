// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_one_bloc.dart';

/// Represents the state of Iphone11ProMaxOne in the application.
class Iphone11ProMaxOneState extends Equatable {
  Iphone11ProMaxOneState({this.iphone11ProMaxOneModelObj});

  Iphone11ProMaxOneModel? iphone11ProMaxOneModelObj;

  @override
  List<Object?> get props => [
        iphone11ProMaxOneModelObj,
      ];
  Iphone11ProMaxOneState copyWith(
      {Iphone11ProMaxOneModel? iphone11ProMaxOneModelObj}) {
    return Iphone11ProMaxOneState(
      iphone11ProMaxOneModelObj:
          iphone11ProMaxOneModelObj ?? this.iphone11ProMaxOneModelObj,
    );
  }
}
