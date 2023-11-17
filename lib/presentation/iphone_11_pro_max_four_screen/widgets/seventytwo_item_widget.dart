import '../models/seventytwo_item_model.dart';
import 'package:delivery_food/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SeventytwoItemWidget extends StatelessWidget {
  SeventytwoItemWidget(
    this.seventytwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SeventytwoItemModel seventytwoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgImage2241x241,
        height: 241.adaptSize,
        width: 241.adaptSize,
        radius: BorderRadius.circular(
          120.h,
        ),
      ),
    );
  }
}
