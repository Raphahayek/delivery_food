import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:delivery_food/presentation/iphone_11_pro_max_three_container_screen/models/iphone_11_pro_max_three_container_model.dart';
part 'iphone_11_pro_max_three_container_event.dart';
part 'iphone_11_pro_max_three_container_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxThreeContainer according to the event that is dispatched to it.
class Iphone11ProMaxThreeContainerBloc extends Bloc<
    Iphone11ProMaxThreeContainerEvent, Iphone11ProMaxThreeContainerState> {
  Iphone11ProMaxThreeContainerBloc(
      Iphone11ProMaxThreeContainerState initialState)
      : super(initialState) {
    on<Iphone11ProMaxThreeContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone11ProMaxThreeContainerInitialEvent event,
    Emitter<Iphone11ProMaxThreeContainerState> emit,
  ) async {}
}
