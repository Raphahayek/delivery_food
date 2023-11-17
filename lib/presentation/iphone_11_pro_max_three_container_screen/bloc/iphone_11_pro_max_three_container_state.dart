// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_three_container_bloc.dart';

/// Represents the state of Iphone11ProMaxThreeContainer in the application.
class Iphone11ProMaxThreeContainerState extends Equatable {
  Iphone11ProMaxThreeContainerState(
      {this.iphone11ProMaxThreeContainerModelObj});

  Iphone11ProMaxThreeContainerModel? iphone11ProMaxThreeContainerModelObj;

  @override
  List<Object?> get props => [
        iphone11ProMaxThreeContainerModelObj,
      ];
  Iphone11ProMaxThreeContainerState copyWith(
      {Iphone11ProMaxThreeContainerModel?
          iphone11ProMaxThreeContainerModelObj}) {
    return Iphone11ProMaxThreeContainerState(
      iphone11ProMaxThreeContainerModelObj:
          iphone11ProMaxThreeContainerModelObj ??
              this.iphone11ProMaxThreeContainerModelObj,
    );
  }
}
