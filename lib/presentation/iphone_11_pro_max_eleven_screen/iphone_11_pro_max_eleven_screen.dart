import 'bloc/iphone_11_pro_max_eleven_bloc.dart';
import 'models/iphone_11_pro_max_eleven_model.dart';
import 'package:delivery_food/core/app_export.dart';
import 'package:delivery_food/widgets/app_bar/appbar_title_image.dart';
import 'package:delivery_food/widgets/app_bar/appbar_trailing_image.dart';
import 'package:delivery_food/widgets/app_bar/custom_app_bar.dart';
import 'package:delivery_food/widgets/custom_elevated_button.dart';
import 'package:delivery_food/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class Iphone11ProMaxElevenScreen extends StatelessWidget {
  const Iphone11ProMaxElevenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxElevenBloc>(
      create: (context) => Iphone11ProMaxElevenBloc(Iphone11ProMaxElevenState(
        iphone11ProMaxElevenModelObj: Iphone11ProMaxElevenModel(),
      ))
        ..add(Iphone11ProMaxElevenInitialEvent()),
      child: Iphone11ProMaxElevenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Iphone11ProMaxElevenBloc, Iphone11ProMaxElevenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary,
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: mediaQueryData.size.width,
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 39.v),
                child: Column(
                  children: [
                    _buildPlaystore1(context),
                    SizedBox(height: 121.v),
                    Text(
                      "msg_how_the_app_works".tr,
                      style: CustomTextStyles.headlineSmallBlack900,
                    ),
                    SizedBox(height: 49.v),
                    Divider(
                      color: appTheme.gray300,
                    ),
                    SizedBox(height: 65.v),
                    Text(
                      "msg_create_an_account".tr,
                      style: CustomTextStyles.headlineSmallPrimary,
                    ),
                    SizedBox(height: 41.v),
                    Container(
                      width: 318.h,
                      margin: EdgeInsets.only(
                        left: 46.h,
                        right: 48.h,
                      ),
                      child: Text(
                        "msg_create_login_to".tr,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.displayMedium!.copyWith(
                          height: 1.43,
                        ),
                      ),
                    ),
                    SizedBox(height: 54.v),
                    SizedBox(
                      width: 242.h,
                      child: Text(
                        "msg_an_account_is_created".tr,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.headlineSmall!.copyWith(
                          height: 1.58,
                        ),
                      ),
                    ),
                    SizedBox(height: 13.v),
                    SizedBox(
                      height: 2708.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 525.v,
                              right: 1.h,
                            ),
                            child: _buildMobileHeroLight(
                              context,
                              checkout: "msg_explore_while_shopping".tr,
                              whenYouDoneCheck:
                                  "msg_shop_for_your_favorites".tr,
                              whenYouDoneCheck1:
                                  "msg_shop_for_your_favorite".tr,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              right: 1.h,
                              bottom: 420.v,
                            ),
                            child: _buildMobileHeroLight(
                              context,
                              checkout: "lbl_checkout".tr,
                              whenYouDoneCheck: "msg_when_you_done_check".tr,
                              whenYouDoneCheck1: "msg_when_you_done_check2".tr,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle581x414,
                            height: 581.v,
                            width: 414.h,
                            alignment: Alignment.topCenter,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle1,
                            height: 581.v,
                            width: 414.h,
                            alignment: Alignment.center,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle2,
                            height: 581.v,
                            width: 414.h,
                            alignment: Alignment.bottomCenter,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 26.v),
                    _buildBuyNow1(context),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgBellaOlonjeLogo51x104,
        margin: EdgeInsets.only(left: 25.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgMenuGray600,
          margin: EdgeInsets.only(
            left: 16.h,
            top: 23.v,
            right: 16.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPlaystore(BuildContext context) {
    return CustomElevatedButton(
      height: 68.v,
      width: 236.h,
      text: "lbl_playstore".tr,
      buttonStyle: CustomButtonStyles.outlineBlack,
      buttonTextStyle: CustomTextStyles.headlineSmallOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildAppStore(BuildContext context) {
    return CustomOutlinedButton(
      width: 236.h,
      text: "lbl_app_store".tr,
    );
  }

  /// Section Widget
  Widget _buildPlaystore1(BuildContext context) {
    return SizedBox(
      height: 1039.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 53.v,
              ),
              decoration: AppDecoration.fillGray50,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "lbl_food_app".tr,
                    style: CustomTextStyles.titleMediumMontserratGray600,
                  ),
                  SizedBox(height: 15.v),
                  Container(
                    width: 381.h,
                    margin: EdgeInsets.only(right: 9.h),
                    child: Text(
                      "msg_why_stay_hungry".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles
                          .displaySmallMontserratOnPrimaryContainer
                          .copyWith(
                        height: 1.18,
                      ),
                    ),
                  ),
                  SizedBox(height: 23.v),
                  Container(
                    width: 335.h,
                    margin: EdgeInsets.only(
                      left: 24.h,
                      right: 30.h,
                    ),
                    child: Text(
                      "msg_download_the_bella".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headlineSmall!.copyWith(
                        height: 1.58,
                      ),
                    ),
                  ),
                  SizedBox(height: 46.v),
                  _buildPlaystore(context),
                  SizedBox(height: 17.v),
                  _buildAppStore(context),
                  SizedBox(height: 17.v),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 492.v,
              width: 406.h,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle,
                    height: 408.v,
                    width: 219.h,
                    alignment: Alignment.bottomRight,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle451x214,
                    height: 451.v,
                    width: 214.h,
                    alignment: Alignment.topLeft,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBuyNow(BuildContext context) {
    return CustomElevatedButton(
      height: 64.v,
      width: 137.h,
      text: "lbl_buy_now".tr,
      buttonStyle: CustomButtonStyles.fillPrimaryTL10,
      buttonTextStyle: CustomTextStyles.titleMediumMontserratOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildTryForFree(BuildContext context) {
    return CustomOutlinedButton(
      height: 60.v,
      width: 186.h,
      text: "lbl_try_for_free".tr,
      buttonStyle: CustomButtonStyles.outlineOnPrimary,
      buttonTextStyle: CustomTextStyles.titleMediumMontserratOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildBuyNow1(BuildContext context) {
    return SizedBox(
      height: 736.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 95.h,
                vertical: 45.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 67.v),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 26.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath:
                                ImageConstant.imgAntDesignTwitterOutlined,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgAntDesignFacebookFilled,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            margin: EdgeInsets.only(left: 24.h),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgAntDesignLinkedinFilled,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            margin: EdgeInsets.only(left: 23.h),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Text(
                    "msg_just_type_what_s".tr,
                    style: CustomTextStyles.labelLargeRobotoGray700,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 36.h,
                vertical: 110.v,
              ),
              decoration: AppDecoration.fillOnPrimaryContainer,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 13.v),
                  Container(
                    width: 299.h,
                    margin: EdgeInsets.only(
                      left: 16.h,
                      right: 24.h,
                    ),
                    child: Text(
                      "msg_download_the_app".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.displayMediumOnPrimary.copyWith(
                        height: 1.43,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Container(
                    width: 245.h,
                    margin: EdgeInsets.only(
                      left: 49.h,
                      right: 47.h,
                    ),
                    child: Text(
                      "msg_most_calendars_are".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.headlineSmallGray40001.copyWith(
                        height: 1.58,
                      ),
                    ),
                  ),
                  SizedBox(height: 55.v),
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildBuyNow(context),
                        _buildTryForFree(context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildMobileHeroLight(
    BuildContext context, {
    required String checkout,
    required String whenYouDoneCheck,
    required String whenYouDoneCheck1,
  }) {
    return Container(
      padding: EdgeInsets.only(top: 103.v),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            checkout,
            style: CustomTextStyles.headlineSmallPrimary.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
          SizedBox(height: 46.v),
          Container(
            width: 291.h,
            margin: EdgeInsets.only(
              left: 60.h,
              right: 61.h,
            ),
            child: Text(
              whenYouDoneCheck,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.displayMedium!.copyWith(
                color: theme.colorScheme.onPrimaryContainer,
                height: 1.43,
              ),
            ),
          ),
          SizedBox(height: 45.v),
          SizedBox(
            width: 251.h,
            child: Text(
              whenYouDoneCheck1,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineSmall!.copyWith(
                color: appTheme.gray600,
                height: 1.58,
              ),
            ),
          ),
          SizedBox(height: 48.v),
        ],
      ),
    );
  }
}
