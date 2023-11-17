import 'bloc/iphone_11_pro_max_five_bloc.dart';
import 'models/iphone_11_pro_max_five_model.dart';
import 'package:delivery_food/core/app_export.dart';
import 'package:delivery_food/widgets/app_bar/appbar_leading_image.dart';
import 'package:delivery_food/widgets/app_bar/appbar_subtitle.dart';
import 'package:delivery_food/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class Iphone11ProMaxFiveScreen extends StatelessWidget {
  const Iphone11ProMaxFiveScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxFiveBloc>(
        create: (context) => Iphone11ProMaxFiveBloc(Iphone11ProMaxFiveState(
            iphone11ProMaxFiveModelObj: Iphone11ProMaxFiveModel()))
          ..add(Iphone11ProMaxFiveInitialEvent()),
        child: Iphone11ProMaxFiveScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<Iphone11ProMaxFiveBloc, Iphone11ProMaxFiveState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.gray20001,
              appBar: _buildAppBar(context),
              body: SizedBox(
                  width: mediaQueryData.size.width,
                  child: SingleChildScrollView(
                      padding: EdgeInsets.only(top: 19.v),
                      child: SizedBox(
                          height: 978.v,
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 33.h, vertical: 34.v),
                                        decoration: AppDecoration.fillGray50
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder30),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text("msg_found_6_results".tr,
                                                  style: CustomTextStyles
                                                      .headlineMediumSFProRoundedBold),
                                              SizedBox(height: 44.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 1.h),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    right: 17.h,
                                                                    bottom:
                                                                        61.v),
                                                            child: _buildEggAndCucmber(
                                                                context,
                                                                eggAndCucmber:
                                                                    "msg_veggie_tomato_mix"
                                                                        .tr,
                                                                n: "lbl_n1_900"
                                                                    .tr,
                                                                moiMoiAndEkpa:
                                                                    "msg_fried_chicken_m"
                                                                        .tr,
                                                                n1: "lbl_n1_900"
                                                                    .tr)),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 17.h,
                                                                    top: 54.v),
                                                            child: _buildEggAndCucmber(
                                                                context,
                                                                eggAndCucmber:
                                                                    "msg_egg_and_cucmber"
                                                                        .tr,
                                                                n: "lbl_n1_900"
                                                                    .tr,
                                                                moiMoiAndEkpa:
                                                                    "msg_moi_moi_and_ekpa"
                                                                        .tr,
                                                                n1: "lbl_n1_900"
                                                                    .tr))
                                                      ])),
                                              SizedBox(height: 81.v)
                                            ]))),
                                Padding(
                                    padding: EdgeInsets.only(right: 33.h),
                                    child: _buildSix(context,
                                        friedChickenM: "msg_egg_and_cucmber".tr,
                                        n: "lbl_n1_900".tr)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 34.h, bottom: 61.v),
                                    child: _buildSix(context,
                                        friedChickenM:
                                            "msg_veggie_tomato_mix".tr,
                                        n: "lbl_n1_900".tr))
                              ]))))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 66.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 42.h, top: 16.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitle(
            text: "lbl_spicy_chieckns".tr, margin: EdgeInsets.only(left: 35.h)),
        actions: [
          Padding(
              padding: EdgeInsets.only(left: 3.h, right: 196.h),
              child: SizedBox(
                  height: 56.v,
                  child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                      color: appTheme.black900,
                      indent: 15.h,
                      endIndent: 15.h)))
        ]);
  }

  /// Common widget
  Widget _buildSix(
    BuildContext context, {
    required String friedChickenM,
    required String n,
  }) {
    return SizedBox(
        height: 252.v,
        width: 156.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 18.h, vertical: 23.v),
                  decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder30),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 81.v),
                        SizedBox(
                            width: 105.h,
                            child: Text(friedChickenM,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.titleLarge!.copyWith(
                                    color: appTheme.black900, height: 1.01))),
                        SizedBox(height: 13.v),
                        Padding(
                            padding: EdgeInsets.only(left: 26.h),
                            child: Text(n,
                                style: CustomTextStyles
                                    .titleMediumSFProRoundedPrimary
                                    .copyWith(
                                        color: theme.colorScheme.primary)))
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgImage21,
              height: 128.adaptSize,
              width: 128.adaptSize,
              radius: BorderRadius.circular(64.h),
              alignment: Alignment.topCenter)
        ]));
  }

  /// Common widget
  Widget _buildEggAndCucmber(
    BuildContext context, {
    required String eggAndCucmber,
    required String n,
    required String moiMoiAndEkpa,
    required String n1,
  }) {
    return Expanded(
        child: SizedBox(
            width: double.maxFinite,
            child: Column(children: [
              SizedBox(
                  height: 252.v,
                  width: 156.h,
                  child: Stack(alignment: Alignment.topCenter, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 19.h, vertical: 23.v),
                            decoration: AppDecoration.outlineGray.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder30),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 81.v),
                                  SizedBox(
                                      width: 103.h,
                                      child: Text(eggAndCucmber,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.titleLarge!
                                              .copyWith(
                                                  color: appTheme.black900,
                                                  height: 1.01))),
                                  SizedBox(height: 13.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 26.h),
                                      child: Text(n,
                                          style: CustomTextStyles
                                              .titleMediumSFProRoundedPrimary
                                              .copyWith(
                                                  color: theme
                                                      .colorScheme.primary)))
                                ]))),
                    CustomImageView(
                        imagePath: ImageConstant.imgImage22,
                        height: 128.adaptSize,
                        width: 128.adaptSize,
                        radius: BorderRadius.circular(64.h),
                        alignment: Alignment.topCenter)
                  ])),
              SizedBox(height: 23.v),
              SizedBox(
                  height: 252.v,
                  width: 156.h,
                  child: Stack(alignment: Alignment.topCenter, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            padding: EdgeInsets.all(23.h),
                            decoration: AppDecoration.outlineGray.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder30),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 81.v),
                                  SizedBox(
                                      width: 95.h,
                                      child: Text(moiMoiAndEkpa,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.titleLarge!
                                              .copyWith(
                                                  color: appTheme.black900,
                                                  height: 1.01))),
                                  SizedBox(height: 9.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 21.h),
                                      child: Text(n1,
                                          style: CustomTextStyles
                                              .titleMediumSFProRoundedPrimary
                                              .copyWith(
                                                  color: theme
                                                      .colorScheme.primary)))
                                ]))),
                    CustomImageView(
                        imagePath: ImageConstant.imgImage23,
                        height: 128.adaptSize,
                        width: 128.adaptSize,
                        radius: BorderRadius.circular(64.h),
                        alignment: Alignment.topCenter)
                  ]))
            ])));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
