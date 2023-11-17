import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:delivery_food/presentation/iphone_11_pro_max_two_screen/models/iphone_11_pro_max_two_model.dart';
part 'iphone_11_pro_max_two_event.dart';
part 'iphone_11_pro_max_two_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxTwo according to the event that is dispatched to it.
class Iphone11ProMaxTwoBloc
    extends Bloc<Iphone11ProMaxTwoEvent, Iphone11ProMaxTwoState> {
  Iphone11ProMaxTwoBloc(Iphone11ProMaxTwoState initialState)
      : super(initialState) {
    on<Iphone11ProMaxTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone11ProMaxTwoInitialEvent event,
    Emitter<Iphone11ProMaxTwoState> emit,
  ) async {
    emit(state.copyWith(
      emailController: TextEditingController(),
      passwordController: TextEditingController(),
    ));
  }
}
