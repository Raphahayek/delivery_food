import '../iphone_11_pro_max_seven_screen/widgets/veggietomatomix_item_widget.dart';
import 'bloc/iphone_11_pro_max_seven_bloc.dart';
import 'models/iphone_11_pro_max_seven_model.dart';
import 'models/veggietomatomix_item_model.dart';
import 'package:delivery_food/core/app_export.dart';
import 'package:delivery_food/widgets/app_bar/appbar_leading_image.dart';
import 'package:delivery_food/widgets/app_bar/appbar_title.dart';
import 'package:delivery_food/widgets/app_bar/custom_app_bar.dart';
import 'package:delivery_food/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class Iphone11ProMaxSevenScreen extends StatelessWidget {
  const Iphone11ProMaxSevenScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxSevenBloc>(
        create: (context) => Iphone11ProMaxSevenBloc(Iphone11ProMaxSevenState(
            iphone11ProMaxSevenModelObj: Iphone11ProMaxSevenModel()))
          ..add(Iphone11ProMaxSevenInitialEvent()),
        child: Iphone11ProMaxSevenScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 39.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgIwwaSwipe,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 5.h, top: 5.v, bottom: 2.v),
                                    child: Text("msg_swipe_on_an_item".tr,
                                        style: theme.textTheme.bodySmall))
                              ])),
                      SizedBox(height: 19.v),
                      _buildNinetyFive(context),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildCompleteOrder(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 65.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 41.h, top: 16.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_cart".tr));
  }

  /// Section Widget
  Widget _buildNinetyFive(BuildContext context) {
    return SizedBox(
        height: 337.v,
        width: 365.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                  padding: EdgeInsets.only(left: 50.h, bottom: 119.v),
                  child: BlocSelector<Iphone11ProMaxSevenBloc,
                          Iphone11ProMaxSevenState, Iphone11ProMaxSevenModel?>(
                      selector: (state) => state.iphone11ProMaxSevenModelObj,
                      builder: (context, iphone11ProMaxSevenModelObj) {
                        return ListView.separated(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (context, index) {
                              return SizedBox(height: 14.v);
                            },
                            itemCount: iphone11ProMaxSevenModelObj
                                    ?.veggietomatomixItemList.length ??
                                0,
                            itemBuilder: (context, index) {
                              VeggietomatomixItemModel model =
                                  iphone11ProMaxSevenModelObj
                                          ?.veggietomatomixItemList[index] ??
                                      VeggietomatomixItemModel();
                              return VeggietomatomixItemWidget(model);
                            });
                      }))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                  margin: EdgeInsets.only(top: 235.v, right: 131.h),
                  padding: EdgeInsets.symmetric(vertical: 16.v),
                  decoration: AppDecoration.outlineBlack900.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage269x5,
                        height: 69.v,
                        width: 5.h,
                        radius: BorderRadius.circular(34.h)),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 15.h, top: 12.v, bottom: 9.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("msg_veggie_tomato_mix".tr,
                                  style:
                                      CustomTextStyles.titleMediumSFProRounded),
                              SizedBox(height: 9.v),
                              Text("lbl_1_900".tr,
                                  style: theme.textTheme.titleSmall)
                            ]))
                  ]))),
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  margin: EdgeInsets.only(bottom: 20.v),
                  padding: EdgeInsets.symmetric(horizontal: 2.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(right: 22.h),
                            child: _buildFortySeven(context,
                                text: "lbl2".tr,
                                one: "lbl_1".tr,
                                text1: "lbl3".tr)),
                        SizedBox(height: 178.v),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 35.v),
                                  child: _buildFortySeven(context,
                                      text: "lbl2".tr,
                                      one: "lbl_1".tr,
                                      text1: "lbl3".tr)),
                              SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  padding:
                                      EdgeInsets.only(left: 53.h, bottom: 10.v),
                                  child: IntrinsicWidth(
                                      child: Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 13.v),
                                          decoration: AppDecoration
                                              .fillSecondaryContainer
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder20),
                                          child: Row(children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgBicreditcard2frontfill,
                                                height: 16.adaptSize,
                                                width: 16.adaptSize,
                                                margin:
                                                    EdgeInsets.only(top: 3.v)),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgArrowDown,
                                                height: 14.v,
                                                width: 16.h,
                                                margin: EdgeInsets.only(
                                                    left: 273.h, top: 3.v))
                                          ])))),
                              Container(
                                  height: 45.adaptSize,
                                  width: 45.adaptSize,
                                  margin:
                                      EdgeInsets.only(left: 15.h, bottom: 10.v),
                                  decoration: BoxDecoration(
                                      color:
                                          theme.colorScheme.secondaryContainer,
                                      borderRadius:
                                          BorderRadius.circular(22.h)))
                            ])
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildCompleteOrder(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_complete_order".tr,
        margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 41.v));
  }

  /// Common widget
  Widget _buildFortySeven(
    BuildContext context, {
    required String text,
    required String one,
    required String text1,
  }) {
    return Container(
        width: 52.h,
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(text,
                      style: CustomTextStyles.titleSmallGray100
                          .copyWith(color: appTheme.gray100))),
              Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(one,
                      style: theme.textTheme.labelLarge!
                          .copyWith(color: theme.colorScheme.onPrimary))),
              Padding(
                  padding: EdgeInsets.only(top: 5.v, bottom: 2.v),
                  child: Text(text1,
                      style: theme.textTheme.labelMedium!
                          .copyWith(color: appTheme.gray100)))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
