// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_seven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxSeven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxSevenEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxSeven widget is first created.
class Iphone11ProMaxSevenInitialEvent extends Iphone11ProMaxSevenEvent {
  @override
  List<Object?> get props => [];
}
