import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/veggietomatomix_item_model.dart';
import 'package:delivery_food/presentation/iphone_11_pro_max_seven_screen/models/iphone_11_pro_max_seven_model.dart';
part 'iphone_11_pro_max_seven_event.dart';
part 'iphone_11_pro_max_seven_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxSeven according to the event that is dispatched to it.
class Iphone11ProMaxSevenBloc
    extends Bloc<Iphone11ProMaxSevenEvent, Iphone11ProMaxSevenState> {
  Iphone11ProMaxSevenBloc(Iphone11ProMaxSevenState initialState)
      : super(initialState) {
    on<Iphone11ProMaxSevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone11ProMaxSevenInitialEvent event,
    Emitter<Iphone11ProMaxSevenState> emit,
  ) async {
    emit(state.copyWith(
        iphone11ProMaxSevenModelObj: state.iphone11ProMaxSevenModelObj
            ?.copyWith(
                veggietomatomixItemList: fillVeggietomatomixItemList())));
  }

  List<VeggietomatomixItemModel> fillVeggietomatomixItemList() {
    return [
      VeggietomatomixItemModel(
          veggieTomatoMix: "Veggie tomato mix",
          oneThousandNineHundred: "#1,900"),
      VeggietomatomixItemModel(veggieTomatoMix: "Fishwith mix orange....")
    ];
  }
}
