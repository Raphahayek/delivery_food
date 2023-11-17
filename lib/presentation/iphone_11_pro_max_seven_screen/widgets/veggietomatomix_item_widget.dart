import '../models/veggietomatomix_item_model.dart';
import 'package:delivery_food/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class VeggietomatomixItemWidget extends StatelessWidget {
  VeggietomatomixItemWidget(
    this.veggietomatomixItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  VeggietomatomixItemModel veggietomatomixItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 17.h,
          vertical: 16.v,
        ),
        decoration: AppDecoration.outlineBlack900.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Row(
          children: [
            SizedBox(
              height: 69.adaptSize,
              width: 69.adaptSize,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgBicreditcard2frontfill,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(right: 6.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage269x69,
                    height: 69.adaptSize,
                    width: 69.adaptSize,
                    radius: BorderRadius.circular(
                      34.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 15.h,
                top: 12.v,
                bottom: 9.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    veggietomatomixItemModelObj.veggieTomatoMix!,
                    style: CustomTextStyles.titleMediumSFProRounded,
                  ),
                  SizedBox(height: 9.v),
                  Text(
                    veggietomatomixItemModelObj.oneThousandNineHundred!,
                    style: theme.textTheme.titleSmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
