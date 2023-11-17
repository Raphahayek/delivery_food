import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/seventytwo_item_model.dart';
import 'package:delivery_food/presentation/iphone_11_pro_max_four_screen/models/iphone_11_pro_max_four_model.dart';
part 'iphone_11_pro_max_four_event.dart';
part 'iphone_11_pro_max_four_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxFour according to the event that is dispatched to it.
class Iphone11ProMaxFourBloc
    extends Bloc<Iphone11ProMaxFourEvent, Iphone11ProMaxFourState> {
  Iphone11ProMaxFourBloc(Iphone11ProMaxFourState initialState)
      : super(initialState) {
    on<Iphone11ProMaxFourInitialEvent>(_onInitialize);
  }

  List<SeventytwoItemModel> fillSeventytwoItemList() {
    return List.generate(1, (index) => SeventytwoItemModel());
  }

  _onInitialize(
    Iphone11ProMaxFourInitialEvent event,
    Emitter<Iphone11ProMaxFourState> emit,
  ) async {
    emit(state.copyWith(sliderIndex: 0));
    emit(state.copyWith(
        iphone11ProMaxFourModelObj: state.iphone11ProMaxFourModelObj
            ?.copyWith(seventytwoItemList: fillSeventytwoItemList())));
  }
}
