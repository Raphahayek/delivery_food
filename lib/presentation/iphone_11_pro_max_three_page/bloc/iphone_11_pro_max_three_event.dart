// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxThreeEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxThree widget is first created.
class Iphone11ProMaxThreeInitialEvent extends Iphone11ProMaxThreeEvent {
  @override
  List<Object?> get props => [];
}
