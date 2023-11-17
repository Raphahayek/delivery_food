import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:delivery_food/presentation/iphone_11_pro_max_three_tab_container_page/models/iphone_11_pro_max_three_tab_container_model.dart';
part 'iphone_11_pro_max_three_tab_container_event.dart';
part 'iphone_11_pro_max_three_tab_container_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxThreeTabContainer according to the event that is dispatched to it.
class Iphone11ProMaxThreeTabContainerBloc extends Bloc<
    Iphone11ProMaxThreeTabContainerEvent,
    Iphone11ProMaxThreeTabContainerState> {
  Iphone11ProMaxThreeTabContainerBloc(
      Iphone11ProMaxThreeTabContainerState initialState)
      : super(initialState) {
    on<Iphone11ProMaxThreeTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone11ProMaxThreeTabContainerInitialEvent event,
    Emitter<Iphone11ProMaxThreeTabContainerState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
