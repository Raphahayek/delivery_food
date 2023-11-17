import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:delivery_food/presentation/iphone_11_pro_max_fourteen_dialog/models/iphone_11_pro_max_fourteen_model.dart';
part 'iphone_11_pro_max_fourteen_event.dart';
part 'iphone_11_pro_max_fourteen_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxFourteen according to the event that is dispatched to it.
class Iphone11ProMaxFourteenBloc
    extends Bloc<Iphone11ProMaxFourteenEvent, Iphone11ProMaxFourteenState> {
  Iphone11ProMaxFourteenBloc(Iphone11ProMaxFourteenState initialState)
      : super(initialState) {
    on<Iphone11ProMaxFourteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone11ProMaxFourteenInitialEvent event,
    Emitter<Iphone11ProMaxFourteenState> emit,
  ) async {}
}
