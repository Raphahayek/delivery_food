import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:delivery_food/presentation/iphone_11_pro_max_six_screen/models/iphone_11_pro_max_six_model.dart';
part 'iphone_11_pro_max_six_event.dart';
part 'iphone_11_pro_max_six_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxSix according to the event that is dispatched to it.
class Iphone11ProMaxSixBloc
    extends Bloc<Iphone11ProMaxSixEvent, Iphone11ProMaxSixState> {
  Iphone11ProMaxSixBloc(Iphone11ProMaxSixState initialState)
      : super(initialState) {
    on<Iphone11ProMaxSixInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<Iphone11ProMaxSixState> emit,
  ) {
    emit(state.copyWith(paymentMethod: event.value));
  }

  List<String> fillRadioList() {
    return ["lbl_card", "lbl_bank_account", "lbl_paypal"];
  }

  _onInitialize(
    Iphone11ProMaxSixInitialEvent event,
    Emitter<Iphone11ProMaxSixState> emit,
  ) async {
    emit(state.copyWith(paymentMethod: ""));
    emit(state.copyWith(
        iphone11ProMaxSixModelObj: state.iphone11ProMaxSixModelObj
            ?.copyWith(radioList: fillRadioList())));
  }
}
