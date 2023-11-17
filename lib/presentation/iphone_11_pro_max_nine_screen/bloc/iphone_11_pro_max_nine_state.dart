// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_nine_bloc.dart';

/// Represents the state of Iphone11ProMaxNine in the application.
class Iphone11ProMaxNineState extends Equatable {
  Iphone11ProMaxNineState({
    this.paymentMethod = "",
    this.deliveryMethod = "",
    this.iphone11ProMaxNineModelObj,
  });

  Iphone11ProMaxNineModel? iphone11ProMaxNineModelObj;

  String paymentMethod;

  String deliveryMethod;

  @override
  List<Object?> get props => [
        paymentMethod,
        deliveryMethod,
        iphone11ProMaxNineModelObj,
      ];
  Iphone11ProMaxNineState copyWith({
    String? paymentMethod,
    String? deliveryMethod,
    Iphone11ProMaxNineModel? iphone11ProMaxNineModelObj,
  }) {
    return Iphone11ProMaxNineState(
      paymentMethod: paymentMethod ?? this.paymentMethod,
      deliveryMethod: deliveryMethod ?? this.deliveryMethod,
      iphone11ProMaxNineModelObj:
          iphone11ProMaxNineModelObj ?? this.iphone11ProMaxNineModelObj,
    );
  }
}
