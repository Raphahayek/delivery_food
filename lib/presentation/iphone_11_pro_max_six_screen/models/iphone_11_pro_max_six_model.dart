// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [iphone_11_pro_max_six_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone11ProMaxSixModel extends Equatable {
  Iphone11ProMaxSixModel({this.radioList = const []}) {}

  List<String> radioList;

  Iphone11ProMaxSixModel copyWith({List<String>? radioList}) {
    return Iphone11ProMaxSixModel(
      radioList: radioList ?? this.radioList,
    );
  }

  @override
  List<Object?> get props => [radioList];
}
