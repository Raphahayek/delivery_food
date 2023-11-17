import 'bloc/iphone_11_pro_max_three_bloc.dart';
import 'models/iphone_11_pro_max_three_model.dart';
import 'package:delivery_food/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone11ProMaxThreePage extends StatefulWidget {
  const Iphone11ProMaxThreePage({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone11ProMaxThreePageState createState() => Iphone11ProMaxThreePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxThreeBloc>(
      create: (context) => Iphone11ProMaxThreeBloc(Iphone11ProMaxThreeState(
        iphone11ProMaxThreeModelObj: Iphone11ProMaxThreeModel(),
      ))
        ..add(Iphone11ProMaxThreeInitialEvent()),
      child: Iphone11ProMaxThreePage(),
    );
  }
}

class Iphone11ProMaxThreePageState extends State<Iphone11ProMaxThreePage>
    with AutomaticKeepAliveClientMixin<Iphone11ProMaxThreePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Iphone11ProMaxThreeBloc, Iphone11ProMaxThreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray10004,
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillGray,
              child: Column(
                children: [
                  SizedBox(height: 46.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(left: 50.h),
                      child: IntrinsicWidth(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 17.v),
                              child: _buildFive(
                                context,
                                spicyFishSauce: "msg_veggie_tomato_mix".tr,
                                n: "lbl_n1_900".tr,
                              ),
                            ),
                            Container(
                              height: 338.v,
                              width: 220.h,
                              margin: EdgeInsets.only(left: 34.h),
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 11.h),
                                      child: Text(
                                        "lbl_see_more".tr,
                                        style: CustomTextStyles
                                            .bodyMediumSFProRoundedPrimary,
                                      ),
                                    ),
                                  ),
                                  _buildFive(
                                    context,
                                    spicyFishSauce: "msg_spicy_fish_sauce".tr,
                                    n: "lbl_n2_300_99".tr,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Common widget
  Widget _buildFive(
    BuildContext context, {
    required String spicyFishSauce,
    required String n,
  }) {
    return SizedBox(
      height: 321.v,
      width: 220.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 36.v,
              ),
              decoration: AppDecoration.outlineGray80019.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder30,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 106.v),
                  SizedBox(
                    width: 136.h,
                    child: Text(
                      spicyFishSauce,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleLarge!.copyWith(
                        color: appTheme.black900,
                        height: 1.01,
                      ),
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Text(
                    n,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.titleMediumSFProRoundedPrimary
                        .copyWith(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage2164x164,
            height: 164.adaptSize,
            width: 164.adaptSize,
            radius: BorderRadius.circular(
              82.h,
            ),
            alignment: Alignment.topCenter,
          ),
        ],
      ),
    );
  }
}
