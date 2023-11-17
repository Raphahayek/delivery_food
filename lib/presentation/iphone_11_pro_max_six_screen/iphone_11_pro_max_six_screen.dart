import 'bloc/iphone_11_pro_max_six_bloc.dart';
import 'models/iphone_11_pro_max_six_model.dart';
import 'package:delivery_food/core/app_export.dart';
import 'package:delivery_food/widgets/app_bar/appbar_leading_image.dart';
import 'package:delivery_food/widgets/app_bar/appbar_title.dart';
import 'package:delivery_food/widgets/app_bar/custom_app_bar.dart';
import 'package:delivery_food/widgets/custom_elevated_button.dart';
import 'package:delivery_food/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

class Iphone11ProMaxSixScreen extends StatelessWidget {
  const Iphone11ProMaxSixScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxSixBloc>(
        create: (context) => Iphone11ProMaxSixBloc(Iphone11ProMaxSixState(
            iphone11ProMaxSixModelObj: Iphone11ProMaxSixModel()))
          ..add(Iphone11ProMaxSixInitialEvent()),
        child: Iphone11ProMaxSixScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 49.h, vertical: 37.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("lbl_information".tr,
                              style: CustomTextStyles.titleMedium17)),
                      SizedBox(height: 11.v),
                      Container(
                          margin: EdgeInsets.only(left: 1.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 20.v),
                          decoration: AppDecoration.outlineBlack900.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder20),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle6,
                                    height: 60.adaptSize,
                                    width: 60.adaptSize,
                                    radius: BorderRadius.circular(10.h),
                                    margin: EdgeInsets.only(bottom: 33.v)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 15.h, bottom: 5.v),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("lbl_marvis_ighedosa".tr,
                                              style:
                                                  theme.textTheme.titleMedium),
                                          SizedBox(height: 8.v),
                                          Opacity(
                                              opacity: 0.5,
                                              child: Text(
                                                  "msg_dosamarvis_gmail_com2"
                                                      .tr,
                                                  style: CustomTextStyles
                                                      .bodyMedium13)),
                                          SizedBox(height: 7.v),
                                          Opacity(
                                              opacity: 0.5,
                                              child: SizedBox(
                                                  width: 187.h,
                                                  child: Text(
                                                      "msg_no_15_uti_street".tr,
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: CustomTextStyles
                                                          .bodyMedium13)))
                                        ]))
                              ])),
                      SizedBox(height: 48.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("lbl_payment_method".tr,
                              style: CustomTextStyles.titleMedium17)),
                      SizedBox(height: 19.v),
                      _buildPaymentMethod(context),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildUpdatet(context)));
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
        title: AppbarTitle(text: "lbl_my_profile".tr));
  }

  /// Section Widget
  Widget _buildPaymentMethod(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: BlocBuilder<Iphone11ProMaxSixBloc, Iphone11ProMaxSixState>(
            builder: (context, state) {
          return state.iphone11ProMaxSixModelObj!.radioList.isNotEmpty
              ? Column(children: [
                  Padding(
                      padding:
                          EdgeInsets.only(left: 21.h, top: 20.v, right: 175.h),
                      child: CustomRadioButton(
                          text: "lbl_card".tr,
                          value:
                              state.iphone11ProMaxSixModelObj?.radioList[0] ??
                                  "",
                          groupValue: state.paymentMethod,
                          padding: EdgeInsets.symmetric(vertical: 9.v),
                          onChange: (value) {
                            context
                                .read<Iphone11ProMaxSixBloc>()
                                .add(ChangeRadioButtonEvent(value: value));
                          })),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 21.h, top: 14.v, right: 104.h),
                      child: CustomRadioButton(
                          text: "lbl_bank_account".tr,
                          value:
                              state.iphone11ProMaxSixModelObj?.radioList[2] ??
                                  "",
                          groupValue: state.paymentMethod,
                          padding: EdgeInsets.symmetric(vertical: 9.v),
                          onChange: (value) {
                            context
                                .read<Iphone11ProMaxSixBloc>()
                                .add(ChangeRadioButtonEvent(value: value));
                          })),
                  Padding(
                      padding: EdgeInsets.fromLTRB(21.h, 14.v, 160.h, 31.v),
                      child: CustomRadioButton(
                          text: "lbl_paypal".tr,
                          value:
                              state.iphone11ProMaxSixModelObj?.radioList[4] ??
                                  "",
                          groupValue: state.paymentMethod,
                          padding: EdgeInsets.symmetric(vertical: 8.v),
                          onChange: (value) {
                            context
                                .read<Iphone11ProMaxSixBloc>()
                                .add(ChangeRadioButtonEvent(value: value));
                          }))
                ])
              : Container();
        }));
  }

  /// Section Widget
  Widget _buildUpdatet(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_updatet".tr,
        margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 41.v));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
