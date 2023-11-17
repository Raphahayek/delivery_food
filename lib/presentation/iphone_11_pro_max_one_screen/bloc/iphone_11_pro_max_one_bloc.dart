import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:delivery_food/presentation/iphone_11_pro_max_one_screen/models/iphone_11_pro_max_one_model.dart';
part 'iphone_11_pro_max_one_event.dart';
part 'iphone_11_pro_max_one_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxOne according to the event that is dispatched to it.
class Iphone11ProMaxOneBloc
    extends Bloc<Iphone11ProMaxOneEvent, Iphone11ProMaxOneState> {
  Iphone11ProMaxOneBloc(Iphone11ProMaxOneState initialState)
      : super(initialState) {
    on<Iphone11ProMaxOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone11ProMaxOneInitialEvent event,
    Emitter<Iphone11ProMaxOneState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.iphone11ProMaxTwoScreen,
      );
    });
  }
}
