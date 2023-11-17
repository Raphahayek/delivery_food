// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_fourteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxFourteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxFourteenEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxFourteen widget is first created.
class Iphone11ProMaxFourteenInitialEvent extends Iphone11ProMaxFourteenEvent {
  @override
  List<Object?> get props => [];
}
