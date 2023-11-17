// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'seventytwo_item_model.dart';

/// This class defines the variables used in the [iphone_11_pro_max_four_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone11ProMaxFourModel extends Equatable {
  Iphone11ProMaxFourModel({this.seventytwoItemList = const []}) {}

  List<SeventytwoItemModel> seventytwoItemList;

  Iphone11ProMaxFourModel copyWith(
      {List<SeventytwoItemModel>? seventytwoItemList}) {
    return Iphone11ProMaxFourModel(
      seventytwoItemList: seventytwoItemList ?? this.seventytwoItemList,
    );
  }

  @override
  List<Object?> get props => [seventytwoItemList];
}
