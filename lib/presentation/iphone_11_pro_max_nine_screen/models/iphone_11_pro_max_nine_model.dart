// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [iphone_11_pro_max_nine_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone11ProMaxNineModel extends Equatable {
  Iphone11ProMaxNineModel({
    this.radioList = const [],
    this.radioList1 = const [],
  }) {}

  List<String> radioList;

  List<String> radioList1;

  Iphone11ProMaxNineModel copyWith({
    List<String>? radioList,
    List<String>? radioList1,
  }) {
    return Iphone11ProMaxNineModel(
      radioList: radioList ?? this.radioList,
      radioList1: radioList1 ?? this.radioList1,
    );
  }

  @override
  List<Object?> get props => [radioList, radioList1];
}
