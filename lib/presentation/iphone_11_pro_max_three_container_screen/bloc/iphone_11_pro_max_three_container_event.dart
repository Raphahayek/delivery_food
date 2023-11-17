// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_three_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxThreeContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxThreeContainerEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxThreeContainer widget is first created.
class Iphone11ProMaxThreeContainerInitialEvent
    extends Iphone11ProMaxThreeContainerEvent {
  @override
  List<Object?> get props => [];
}
