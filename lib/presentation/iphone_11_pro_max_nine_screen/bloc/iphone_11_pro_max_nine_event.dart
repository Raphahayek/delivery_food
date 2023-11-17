// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_nine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxNine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxNineEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxNine widget is first created.
class Iphone11ProMaxNineInitialEvent extends Iphone11ProMaxNineEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends Iphone11ProMaxNineEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton1Event extends Iphone11ProMaxNineEvent {
  ChangeRadioButton1Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
