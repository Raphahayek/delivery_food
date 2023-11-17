// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_six_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxSix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxSixEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxSix widget is first created.
class Iphone11ProMaxSixInitialEvent extends Iphone11ProMaxSixEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends Iphone11ProMaxSixEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
