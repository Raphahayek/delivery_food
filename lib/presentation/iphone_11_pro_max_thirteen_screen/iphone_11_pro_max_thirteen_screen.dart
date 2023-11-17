import 'bloc/iphone_11_pro_max_thirteen_bloc.dart';
import 'models/iphone_11_pro_max_thirteen_model.dart';
import 'package:delivery_food/core/app_export.dart';
import 'package:delivery_food/widgets/custom_elevated_button.dart';
import 'package:delivery_food/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class Iphone11ProMaxThirteenScreen extends StatelessWidget {
  const Iphone11ProMaxThirteenScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxThirteenBloc>(
        create: (context) => Iphone11ProMaxThirteenBloc(
            Iphone11ProMaxThirteenState(
                iphone11ProMaxThirteenModelObj: Iphone11ProMaxThirteenModel()))
          ..add(Iphone11ProMaxThirteenInitialEvent()),
        child: Iphone11ProMaxThirteenScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 30.v),
                child: Column(children: [
                  SizedBox(height: 30.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 41.h, right: 57.h, bottom: 5.v),
                              child: Column(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgArrowLeft,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    alignment: Alignment.centerLeft,
                                    onTap: () {
                                      onTapImgArrowLeft(context);
                                    }),
                                SizedBox(height: 42.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 9.h),
                                        child: Text("lbl_my_profile".tr,
                                            style:
                                                theme.textTheme.displaySmall))),
                                SizedBox(height: 40.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 1.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("msg_personal_details".tr,
                                              style:
                                                  theme.textTheme.titleMedium),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 4.v),
                                              child: Text("lbl_change".tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumPrimary))
                                        ])),
                                SizedBox(height: 10.v),
                                Container(
                                    margin: EdgeInsets.only(left: 1.h),
                                    padding:
                                        EdgeInsets.symmetric(vertical: 18.v),
                                    decoration: AppDecoration.outlineBlack900
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgRectangle6,
                                              height: 100.v,
                                              width: 91.h,
                                              radius:
                                                  BorderRadius.circular(10.h),
                                              margin: EdgeInsets.only(
                                                  bottom: 61.v)),
                                          Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 8.v),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                        "lbl_marvis_ighedosa"
                                                            .tr,
                                                        style: theme.textTheme
                                                            .titleMedium),
                                                    SizedBox(height: 5.v),
                                                    Opacity(
                                                        opacity: 0.5,
                                                        child: Text(
                                                            "msg_dosamarvis_gmail_com"
                                                                .tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodyMedium)),
                                                    SizedBox(height: 6.v),
                                                    Opacity(
                                                        opacity: 0.5,
                                                        child: SizedBox(
                                                            width: 165.h,
                                                            child: Divider(
                                                                color: appTheme
                                                                    .black900
                                                                    .withOpacity(
                                                                        0.53)))),
                                                    SizedBox(height: 6.v),
                                                    BlocSelector<
                                                            Iphone11ProMaxThirteenBloc,
                                                            Iphone11ProMaxThirteenState,
                                                            TextEditingController?>(
                                                        selector: (state) => state
                                                            .mobileNoController,
                                                        builder: (context,
                                                            mobileNoController) {
                                                          return CustomTextFormField(
                                                              width: 165.h,
                                                              controller:
                                                                  mobileNoController,
                                                              hintText:
                                                                  "lbl_234_9011039271"
                                                                      .tr,
                                                              hintStyle: theme
                                                                  .textTheme
                                                                  .bodyMedium!,
                                                              textInputAction:
                                                                  TextInputAction
                                                                      .done,
                                                              borderDecoration:
                                                                  TextFormFieldStyleHelper
                                                                      .underLineBlack2);
                                                        }),
                                                    SizedBox(height: 5.v),
                                                    Opacity(
                                                        opacity: 0.5,
                                                        child: SizedBox(
                                                            width: 177.h,
                                                            child: Text(
                                                                "msg_no_15_uti_street"
                                                                    .tr,
                                                                maxLines: 3,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyMedium)))
                                                  ]))
                                        ])),
                                SizedBox(height: 27.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 1.h),
                                    child: _buildFiftyEight(context,
                                        pendingReviews: "lbl_orders".tr)),
                                SizedBox(height: 27.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 1.h),
                                    child: _buildFiftyEight(context,
                                        pendingReviews:
                                            "lbl_pending_reviews".tr)),
                                SizedBox(height: 27.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 1.h),
                                    child: _buildFiftyEight(context,
                                        pendingReviews: "lbl_faq".tr)),
                                SizedBox(height: 27.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 1.h),
                                    child: _buildFiftyEight(context,
                                        pendingReviews: "lbl_help".tr))
                              ]))))
                ])),
            bottomNavigationBar: _buildUpdate(context)));
  }

  /// Section Widget
  Widget _buildUpdate(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_update".tr,
        margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 30.v));
  }

  /// Common widget
  Widget _buildFiftyEight(
    BuildContext context, {
    required String pendingReviews,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 17.v),
        decoration: AppDecoration.outlineBlack900
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 3.v),
              child: Text(pendingReviews,
                  style: theme.textTheme.titleMedium!
                      .copyWith(color: appTheme.black900))),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(top: 2.v, right: 4.h))
        ]));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
