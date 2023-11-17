import 'bloc/iphone_11_pro_max_nine_bloc.dart';
import 'models/iphone_11_pro_max_nine_model.dart';
import 'package:delivery_food/core/app_export.dart';
import 'package:delivery_food/widgets/app_bar/appbar_leading_image.dart';
import 'package:delivery_food/widgets/app_bar/appbar_title.dart';
import 'package:delivery_food/widgets/app_bar/custom_app_bar.dart';
import 'package:delivery_food/widgets/custom_elevated_button.dart';
import 'package:delivery_food/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

class Iphone11ProMaxNineScreen extends StatelessWidget {
  const Iphone11ProMaxNineScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxNineBloc>(
        create: (context) => Iphone11ProMaxNineBloc(Iphone11ProMaxNineState(
            iphone11ProMaxNineModelObj: Iphone11ProMaxNineModel()))
          ..add(Iphone11ProMaxNineInitialEvent()),
        child: Iphone11ProMaxNineScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 46.h, vertical: 27.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("lbl_payment".tr,
                              style: theme.textTheme.displaySmall)),
                      SizedBox(height: 45.v),
                      Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text("lbl_payment_method2".tr,
                              style: CustomTextStyles.titleMedium17)),
                      SizedBox(height: 18.v),
                      _buildPaymentMethod(context),
                      SizedBox(height: 19.v),
                      Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text("msg_delivery_method".tr,
                              style: CustomTextStyles.titleMedium17)),
                      SizedBox(height: 18.v),
                      _buildDeliveryMethod(context),
                      SizedBox(height: 39.v),
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
  Widget _buildPaymentMethod(BuildContext context) {
    return BlocBuilder<Iphone11ProMaxNineBloc, Iphone11ProMaxNineState>(
        builder: (context, state) {
      return state.iphone11ProMaxNineModelObj!.radioList.isNotEmpty
          ? Column(children: [
              Padding(
                  padding: EdgeInsets.only(left: 21.h, top: 20.v, right: 175.h),
                  child: CustomRadioButton(
                      text: "lbl_card".tr,
                      value:
                          state.iphone11ProMaxNineModelObj?.radioList[0] ?? "",
                      groupValue: state.paymentMethod,
                      padding: EdgeInsets.symmetric(vertical: 9.v),
                      onChange: (value) {
                        context
                            .read<Iphone11ProMaxNineBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      })),
              Padding(
                  padding: EdgeInsets.fromLTRB(21.h, 14.v, 104.h, 75.v),
                  child: CustomRadioButton(
                      text: "lbl_bank_account".tr,
                      value:
                          state.iphone11ProMaxNineModelObj?.radioList[2] ?? "",
                      groupValue: state.paymentMethod,
                      padding: EdgeInsets.symmetric(vertical: 9.v),
                      onChange: (value) {
                        context
                            .read<Iphone11ProMaxNineBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      }))
            ])
          : Container();
    });
  }

  /// Section Widget
  Widget _buildDeliveryMethod(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h),
        child: BlocBuilder<Iphone11ProMaxNineBloc, Iphone11ProMaxNineState>(
            builder: (context, state) {
          return state.iphone11ProMaxNineModelObj!.radioList1.isNotEmpty
              ? Column(children: [
                  Padding(
                      padding:
                          EdgeInsets.only(left: 21.h, top: 30.v, right: 156.h),
                      child: CustomRadioButton(
                          text: "lbl_door_delivery".tr,
                          value:
                              state.iphone11ProMaxNineModelObj?.radioList1[0] ??
                                  "",
                          groupValue: state.deliveryMethod,
                          onChange: (value) {
                            context
                                .read<Iphone11ProMaxNineBloc>()
                                .add(ChangeRadioButton1Event(value: value));
                          })),
                  Padding(
                      padding: EdgeInsets.fromLTRB(21.h, 25.v, 204.h, 34.v),
                      child: CustomRadioButton(
                          text: "lbl_pick_up".tr,
                          value:
                              state.iphone11ProMaxNineModelObj?.radioList1[2] ??
                                  "",
                          groupValue: state.deliveryMethod,
                          onChange: (value) {
                            context
                                .read<Iphone11ProMaxNineBloc>()
                                .add(ChangeRadioButton1Event(value: value));
                          }))
                ])
              : Container();
        }));
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
