// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxTwoEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxTwo widget is first created.
class Iphone11ProMaxTwoInitialEvent extends Iphone11ProMaxTwoEvent {
  @override
  List<Object?> get props => [];
}
