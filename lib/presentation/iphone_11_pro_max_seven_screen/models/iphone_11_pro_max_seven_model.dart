// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'veggietomatomix_item_model.dart';

/// This class defines the variables used in the [iphone_11_pro_max_seven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone11ProMaxSevenModel extends Equatable {
  Iphone11ProMaxSevenModel({this.veggietomatomixItemList = const []}) {}

  List<VeggietomatomixItemModel> veggietomatomixItemList;

  Iphone11ProMaxSevenModel copyWith(
      {List<VeggietomatomixItemModel>? veggietomatomixItemList}) {
    return Iphone11ProMaxSevenModel(
      veggietomatomixItemList:
          veggietomatomixItemList ?? this.veggietomatomixItemList,
    );
  }

  @override
  List<Object?> get props => [veggietomatomixItemList];
}
