// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_three_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxThreeTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxThreeTabContainerEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxThreeTabContainer widget is first created.
class Iphone11ProMaxThreeTabContainerInitialEvent
    extends Iphone11ProMaxThreeTabContainerEvent {
  @override
  List<Object?> get props => [];
}
