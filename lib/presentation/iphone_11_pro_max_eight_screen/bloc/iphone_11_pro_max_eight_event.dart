// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_eight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxEight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxEightEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxEight widget is first created.
class Iphone11ProMaxEightInitialEvent extends Iphone11ProMaxEightEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends Iphone11ProMaxEightEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
