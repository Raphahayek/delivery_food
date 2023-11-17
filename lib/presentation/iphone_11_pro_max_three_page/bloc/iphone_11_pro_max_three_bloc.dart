import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:delivery_food/presentation/iphone_11_pro_max_three_page/models/iphone_11_pro_max_three_model.dart';
part 'iphone_11_pro_max_three_event.dart';
part 'iphone_11_pro_max_three_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxThree according to the event that is dispatched to it.
class Iphone11ProMaxThreeBloc
    extends Bloc<Iphone11ProMaxThreeEvent, Iphone11ProMaxThreeState> {
  Iphone11ProMaxThreeBloc(Iphone11ProMaxThreeState initialState)
      : super(initialState) {
    on<Iphone11ProMaxThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone11ProMaxThreeInitialEvent event,
    Emitter<Iphone11ProMaxThreeState> emit,
  ) async {}
}
