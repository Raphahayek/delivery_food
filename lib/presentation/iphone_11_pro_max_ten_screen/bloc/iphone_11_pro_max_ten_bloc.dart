import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:delivery_food/presentation/iphone_11_pro_max_ten_screen/models/iphone_11_pro_max_ten_model.dart';
part 'iphone_11_pro_max_ten_event.dart';
part 'iphone_11_pro_max_ten_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxTen according to the event that is dispatched to it.
class Iphone11ProMaxTenBloc
    extends Bloc<Iphone11ProMaxTenEvent, Iphone11ProMaxTenState> {
  Iphone11ProMaxTenBloc(Iphone11ProMaxTenState initialState)
      : super(initialState) {
    on<Iphone11ProMaxTenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone11ProMaxTenInitialEvent event,
    Emitter<Iphone11ProMaxTenState> emit,
  ) async {}
}
