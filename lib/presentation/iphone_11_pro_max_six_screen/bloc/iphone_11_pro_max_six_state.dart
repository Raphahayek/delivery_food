// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_six_bloc.dart';

/// Represents the state of Iphone11ProMaxSix in the application.
class Iphone11ProMaxSixState extends Equatable {
  Iphone11ProMaxSixState({
    this.paymentMethod = "",
    this.iphone11ProMaxSixModelObj,
  });

  Iphone11ProMaxSixModel? iphone11ProMaxSixModelObj;

  String paymentMethod;

  @override
  List<Object?> get props => [
        paymentMethod,
        iphone11ProMaxSixModelObj,
      ];
  Iphone11ProMaxSixState copyWith({
    String? paymentMethod,
    Iphone11ProMaxSixModel? iphone11ProMaxSixModelObj,
  }) {
    return Iphone11ProMaxSixState(
      paymentMethod: paymentMethod ?? this.paymentMethod,
      iphone11ProMaxSixModelObj:
          iphone11ProMaxSixModelObj ?? this.iphone11ProMaxSixModelObj,
    );
  }
}
