import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:delivery_food/presentation/iphone_11_pro_max_nine_screen/models/iphone_11_pro_max_nine_model.dart';
part 'iphone_11_pro_max_nine_event.dart';
part 'iphone_11_pro_max_nine_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxNine according to the event that is dispatched to it.
class Iphone11ProMaxNineBloc
    extends Bloc<Iphone11ProMaxNineEvent, Iphone11ProMaxNineState> {
  Iphone11ProMaxNineBloc(Iphone11ProMaxNineState initialState)
      : super(initialState) {
    on<Iphone11ProMaxNineInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
    on<ChangeRadioButton1Event>(_changeRadioButton1);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<Iphone11ProMaxNineState> emit,
  ) {
    emit(state.copyWith(paymentMethod: event.value));
  }

  _changeRadioButton1(
    ChangeRadioButton1Event event,
    Emitter<Iphone11ProMaxNineState> emit,
  ) {
    emit(state.copyWith(deliveryMethod: event.value));
  }

  List<String> fillRadioList() {
    return ["lbl_card", "lbl_bank_account"];
  }

  List<String> fillRadioList1() {
    return ["lbl_door_delivery", "lbl_pick_up"];
  }

  _onInitialize(
    Iphone11ProMaxNineInitialEvent event,
    Emitter<Iphone11ProMaxNineState> emit,
  ) async {
    emit(state.copyWith(paymentMethod: "", deliveryMethod: ""));
    emit(state.copyWith(
        iphone11ProMaxNineModelObj: state.iphone11ProMaxNineModelObj?.copyWith(
            radioList: fillRadioList(), radioList1: fillRadioList1())));
  }
}
