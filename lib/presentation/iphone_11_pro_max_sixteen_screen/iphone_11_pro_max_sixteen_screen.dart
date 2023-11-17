import 'bloc/iphone_11_pro_max_sixteen_bloc.dart';
import 'models/iphone_11_pro_max_sixteen_model.dart';
import 'package:delivery_food/core/app_export.dart';
import 'package:delivery_food/widgets/app_bar/appbar_leading_image.dart';
import 'package:delivery_food/widgets/app_bar/appbar_title.dart';
import 'package:delivery_food/widgets/app_bar/custom_app_bar.dart';
import 'package:delivery_food/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class Iphone11ProMaxSixteenScreen extends StatelessWidget {
  const Iphone11ProMaxSixteenScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxSixteenBloc>(
        create: (context) => Iphone11ProMaxSixteenBloc(
            Iphone11ProMaxSixteenState(
                iphone11ProMaxSixteenModelObj: Iphone11ProMaxSixteenModel()))
          ..add(Iphone11ProMaxSixteenInitialEvent()),
        child: Iphone11ProMaxSixteenScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<Iphone11ProMaxSixteenBloc, Iphone11ProMaxSixteenState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 172.v),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgGroup,
                        height: 107.v,
                        width: 113.h,
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 35.h)),
                    SizedBox(height: 39.v),
                    Text("lbl_no_orders_yet".tr,
                        style: theme.textTheme.headlineMedium),
                    SizedBox(height: 13.v),
                    Opacity(
                        opacity: 0.57,
                        child: SizedBox(
                            width: 220.h,
                            child: Text("msg_hit_the_orange_button".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.bodyLargeBlack900))),
                    SizedBox(height: 5.v)
                  ])),
              bottomNavigationBar: _buildStartOdering(context)));
    });
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
        title: AppbarTitle(text: "lbl_orders".tr));
  }

  /// Section Widget
  Widget _buildStartOdering(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_start_odering".tr,
        margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 41.v));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
