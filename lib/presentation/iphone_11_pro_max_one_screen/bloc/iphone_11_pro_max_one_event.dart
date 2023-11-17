// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxOneEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxOne widget is first created.
class Iphone11ProMaxOneInitialEvent extends Iphone11ProMaxOneEvent {
  @override
  List<Object?> get props => [];
}
