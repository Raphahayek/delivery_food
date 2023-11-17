import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:delivery_food/presentation/iphone_11_pro_max_eight_screen/models/iphone_11_pro_max_eight_model.dart';
part 'iphone_11_pro_max_eight_event.dart';
part 'iphone_11_pro_max_eight_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxEight according to the event that is dispatched to it.
class Iphone11ProMaxEightBloc
    extends Bloc<Iphone11ProMaxEightEvent, Iphone11ProMaxEightState> {
  Iphone11ProMaxEightBloc(Iphone11ProMaxEightState initialState)
      : super(initialState) {
    on<Iphone11ProMaxEightInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<Iphone11ProMaxEightState> emit,
  ) {
    emit(state.copyWith(deliveryMethod: event.value));
  }

  List<String> fillRadioList() {
    return ["lbl_door_delivery", "lbl_pick_up"];
  }

  _onInitialize(
    Iphone11ProMaxEightInitialEvent event,
    Emitter<Iphone11ProMaxEightState> emit,
  ) async {
    emit(state.copyWith(
        marvisKparoboController: TextEditingController(), deliveryMethod: ""));
    emit(state.copyWith(
        iphone11ProMaxEightModelObj: state.iphone11ProMaxEightModelObj
            ?.copyWith(radioList: fillRadioList())));
  }
}
