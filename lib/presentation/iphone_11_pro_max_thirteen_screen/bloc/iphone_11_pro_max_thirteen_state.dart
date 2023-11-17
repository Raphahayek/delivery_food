// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_thirteen_bloc.dart';

/// Represents the state of Iphone11ProMaxThirteen in the application.
class Iphone11ProMaxThirteenState extends Equatable {
  Iphone11ProMaxThirteenState({
    this.mobileNoController,
    this.iphone11ProMaxThirteenModelObj,
  });

  TextEditingController? mobileNoController;

  Iphone11ProMaxThirteenModel? iphone11ProMaxThirteenModelObj;

  @override
  List<Object?> get props => [
        mobileNoController,
        iphone11ProMaxThirteenModelObj,
      ];
  Iphone11ProMaxThirteenState copyWith({
    TextEditingController? mobileNoController,
    Iphone11ProMaxThirteenModel? iphone11ProMaxThirteenModelObj,
  }) {
    return Iphone11ProMaxThirteenState(
      mobileNoController: mobileNoController ?? this.mobileNoController,
      iphone11ProMaxThirteenModelObj:
          iphone11ProMaxThirteenModelObj ?? this.iphone11ProMaxThirteenModelObj,
    );
  }
}
