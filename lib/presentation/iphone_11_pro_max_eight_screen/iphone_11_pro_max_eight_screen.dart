import 'bloc/iphone_11_pro_max_eight_bloc.dart';
import 'models/iphone_11_pro_max_eight_model.dart';
import 'package:delivery_food/core/app_export.dart';
import 'package:delivery_food/widgets/app_bar/appbar_leading_image.dart';
import 'package:delivery_food/widgets/app_bar/appbar_title.dart';
import 'package:delivery_food/widgets/app_bar/custom_app_bar.dart';
import 'package:delivery_food/widgets/custom_elevated_button.dart';
import 'package:delivery_food/widgets/custom_radio_button.dart';
import 'package:delivery_food/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class Iphone11ProMaxEightScreen extends StatelessWidget {
  const Iphone11ProMaxEightScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxEightBloc>(
        create: (context) => Iphone11ProMaxEightBloc(Iphone11ProMaxEightState(
            iphone11ProMaxEightModelObj: Iphone11ProMaxEightModel()))
          ..add(Iphone11ProMaxEightInitialEvent()),
        child: Iphone11ProMaxEightScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 46.h, vertical: 26.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("lbl_delivery".tr,
                              style: theme.textTheme.displaySmall))),
                  SizedBox(height: 41.v),
                  Padding(
                      padding: EdgeInsets.only(left: 7.h, right: 11.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("lbl_address_details".tr,
                                style: CustomTextStyles.titleMedium17),
                            Text("lbl_change".tr,
                                style: CustomTextStyles.bodyMediumOrange700)
                          ])),
                  SizedBox(height: 19.v),
                  Container(
                      width: 315.h,
                      margin: EdgeInsets.only(left: 4.h, right: 3.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.h, vertical: 25.v),
                      decoration: AppDecoration.outlineBlack900.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(right: 23.h),
                                child: BlocSelector<
                                        Iphone11ProMaxEightBloc,
                                        Iphone11ProMaxEightState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.marvisKparoboController,
                                    builder:
                                        (context, marvisKparoboController) {
                                      return CustomTextFormField(
                                          controller: marvisKparoboController,
                                          hintText: "lbl_marvis_kparobo".tr,
                                          hintStyle: CustomTextStyles
                                              .titleMediumMedium,
                                          textInputAction: TextInputAction.done,
                                          borderDecoration:
                                              TextFormFieldStyleHelper
                                                  .underLineBlack1);
                                    })),
                            SizedBox(height: 6.v),
                            Container(
                                width: 223.h,
                                margin: EdgeInsets.only(right: 32.h),
                                child: Text("msg_km_5_refinery_road".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        CustomTextStyles.bodyMediumBlack900)),
                            SizedBox(height: 5.v),
                            Opacity(
                                opacity: 0.3, child: Divider(endIndent: 23.h)),
                            SizedBox(height: 7.v),
                            Text("lbl_234_9011039271".tr,
                                style: CustomTextStyles.bodyMediumBlack900)
                          ])),
                  SizedBox(height: 42.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text("msg_delivery_method".tr,
                              style: CustomTextStyles.titleMedium17))),
                  SizedBox(height: 18.v),
                  _buildDeliveryMethod(context),
                  SizedBox(height: 68.v),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h, right: 3.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 5.v),
                                child: Text("lbl_total".tr,
                                    style: theme.textTheme.bodyLarge)),
                            Text("lbl_23_000".tr,
                                style: CustomTextStyles.titleLargeSFProText)
                          ])),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildProceedToPayment(context)));
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
        title: AppbarTitle(text: "lbl_checkout".tr));
  }

  /// Section Widget
  Widget _buildDeliveryMethod(BuildContext context) {
    return BlocBuilder<Iphone11ProMaxEightBloc, Iphone11ProMaxEightState>(
        builder: (context, state) {
      return state.iphone11ProMaxEightModelObj!.radioList.isNotEmpty
          ? Column(children: [
              Padding(
                  padding: EdgeInsets.only(left: 21.h, top: 30.v, right: 156.h),
                  child: CustomRadioButton(
                      text: "lbl_door_delivery".tr,
                      value:
                          state.iphone11ProMaxEightModelObj?.radioList[0] ?? "",
                      groupValue: state.deliveryMethod,
                      onChange: (value) {
                        context
                            .read<Iphone11ProMaxEightBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      })),
              Padding(
                  padding: EdgeInsets.fromLTRB(21.h, 25.v, 204.h, 34.v),
                  child: CustomRadioButton(
                      text: "lbl_pick_up".tr,
                      value:
                          state.iphone11ProMaxEightModelObj?.radioList[2] ?? "",
                      groupValue: state.deliveryMethod,
                      onChange: (value) {
                        context
                            .read<Iphone11ProMaxEightBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      }))
            ])
          : Container();
    });
  }

  /// Section Widget
  Widget _buildProceedToPayment(BuildContext context) {
    return CustomElevatedButton(
        text: "msg_proceed_to_payment".tr,
        margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 41.v));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
