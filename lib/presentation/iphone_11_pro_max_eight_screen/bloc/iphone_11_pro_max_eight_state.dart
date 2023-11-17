// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_eight_bloc.dart';

/// Represents the state of Iphone11ProMaxEight in the application.
class Iphone11ProMaxEightState extends Equatable {
  Iphone11ProMaxEightState({
    this.marvisKparoboController,
    this.deliveryMethod = "",
    this.iphone11ProMaxEightModelObj,
  });

  TextEditingController? marvisKparoboController;

  Iphone11ProMaxEightModel? iphone11ProMaxEightModelObj;

  String deliveryMethod;

  @override
  List<Object?> get props => [
        marvisKparoboController,
        deliveryMethod,
        iphone11ProMaxEightModelObj,
      ];
  Iphone11ProMaxEightState copyWith({
    TextEditingController? marvisKparoboController,
    String? deliveryMethod,
    Iphone11ProMaxEightModel? iphone11ProMaxEightModelObj,
  }) {
    return Iphone11ProMaxEightState(
      marvisKparoboController:
          marvisKparoboController ?? this.marvisKparoboController,
      deliveryMethod: deliveryMethod ?? this.deliveryMethod,
      iphone11ProMaxEightModelObj:
          iphone11ProMaxEightModelObj ?? this.iphone11ProMaxEightModelObj,
    );
  }
}
