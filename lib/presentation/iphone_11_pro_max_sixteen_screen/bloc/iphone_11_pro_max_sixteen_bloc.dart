import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:delivery_food/presentation/iphone_11_pro_max_sixteen_screen/models/iphone_11_pro_max_sixteen_model.dart';
part 'iphone_11_pro_max_sixteen_event.dart';
part 'iphone_11_pro_max_sixteen_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxSixteen according to the event that is dispatched to it.
class Iphone11ProMaxSixteenBloc
    extends Bloc<Iphone11ProMaxSixteenEvent, Iphone11ProMaxSixteenState> {
  Iphone11ProMaxSixteenBloc(Iphone11ProMaxSixteenState initialState)
      : super(initialState) {
    on<Iphone11ProMaxSixteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone11ProMaxSixteenInitialEvent event,
    Emitter<Iphone11ProMaxSixteenState> emit,
  ) async {}
}
