// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_four_bloc.dart';

/// Represents the state of Iphone11ProMaxFour in the application.
class Iphone11ProMaxFourState extends Equatable {
  Iphone11ProMaxFourState({
    this.sliderIndex = 0,
    this.iphone11ProMaxFourModelObj,
  });

  Iphone11ProMaxFourModel? iphone11ProMaxFourModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        iphone11ProMaxFourModelObj,
      ];
  Iphone11ProMaxFourState copyWith({
    int? sliderIndex,
    Iphone11ProMaxFourModel? iphone11ProMaxFourModelObj,
  }) {
    return Iphone11ProMaxFourState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      iphone11ProMaxFourModelObj:
          iphone11ProMaxFourModelObj ?? this.iphone11ProMaxFourModelObj,
    );
  }
}
