// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxFourEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxFour widget is first created.
class Iphone11ProMaxFourInitialEvent extends Iphone11ProMaxFourEvent {
  @override
  List<Object?> get props => [];
}
