import 'bloc/iphone_11_pro_max_eighteen_bloc.dart';
import 'models/iphone_11_pro_max_eighteen_model.dart';
import 'package:delivery_food/core/app_export.dart';
import 'package:delivery_food/widgets/app_bar/appbar_leading_image.dart';
import 'package:delivery_food/widgets/app_bar/appbar_subtitle.dart';
import 'package:delivery_food/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class Iphone11ProMaxEighteenScreen extends StatelessWidget {
  const Iphone11ProMaxEighteenScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxEighteenBloc>(
        create: (context) => Iphone11ProMaxEighteenBloc(
            Iphone11ProMaxEighteenState(
                iphone11ProMaxEighteenModelObj: Iphone11ProMaxEighteenModel()))
          ..add(Iphone11ProMaxEighteenInitialEvent()),
        child: Iphone11ProMaxEighteenScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<Iphone11ProMaxEighteenBloc, Iphone11ProMaxEighteenState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 190.v),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgSearch,
                        height: 91.adaptSize,
                        width: 91.adaptSize,
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 48.h)),
                    SizedBox(height: 51.v),
                    Text("lbl_item_not_found".tr,
                        style: theme.textTheme.headlineMedium),
                    SizedBox(height: 16.v),
                    Opacity(
                        opacity: 0.57,
                        child: SizedBox(
                            width: 218.h,
                            child: Text("msg_try_searching_the".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.bodyLargeBlack900))),
                    SizedBox(height: 5.v)
                  ]))));
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

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
