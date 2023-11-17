// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_ten_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxTen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxTenEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxTen widget is first created.
class Iphone11ProMaxTenInitialEvent extends Iphone11ProMaxTenEvent {
  @override
  List<Object?> get props => [];
}
