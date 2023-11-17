import 'bloc/iphone_11_pro_max_ten_bloc.dart';
import 'models/iphone_11_pro_max_ten_model.dart';
import 'package:delivery_food/core/app_export.dart';
import 'package:flutter/material.dart';

class Iphone11ProMaxTenScreen extends StatelessWidget {
  const Iphone11ProMaxTenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxTenBloc>(
      create: (context) => Iphone11ProMaxTenBloc(Iphone11ProMaxTenState(
        iphone11ProMaxTenModelObj: Iphone11ProMaxTenModel(),
      ))
        ..add(Iphone11ProMaxTenInitialEvent()),
      child: Iphone11ProMaxTenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Iphone11ProMaxTenBloc, Iphone11ProMaxTenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 71.v),
                  Padding(
                    padding: EdgeInsets.only(left: 38.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 3.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgGgProfile,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin: EdgeInsets.only(top: 1.v),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 12.h),
                                    child: Text(
                                      "lbl_profile".tr,
                                      style: CustomTextStyles
                                          .titleMediumPoppinsOnPrimary,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 26.v),
                              Align(
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                  width: 141.h,
                                  child: Divider(
                                    color: appTheme.gray10001,
                                    endIndent: 9.h,
                                  ),
                                ),
                              ),
                              SizedBox(height: 25.v),
                              Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgIcons8Buy,
                                    height: 26.adaptSize,
                                    width: 26.adaptSize,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text(
                                      "lbl_orders2".tr,
                                      style: CustomTextStyles
                                          .titleMediumPoppinsOnPrimary,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 26.v),
                              Align(
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                  width: 141.h,
                                  child: Divider(
                                    color: appTheme.gray10001,
                                    endIndent: 9.h,
                                  ),
                                ),
                              ),
                              SizedBox(height: 27.v),
                              Row(
                                children: [
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgIcOutlineLocalOffer,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin: EdgeInsets.only(bottom: 1.v),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 12.h),
                                    child: Text(
                                      "lbl_offer_and_promo".tr,
                                      style: CustomTextStyles
                                          .titleMediumPoppinsOnPrimary,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 24.v),
                              Align(
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                  width: 141.h,
                                  child: Divider(
                                    color: appTheme.gray10001,
                                    endIndent: 9.h,
                                  ),
                                ),
                              ),
                              SizedBox(height: 27.v),
                              Row(
                                children: [
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgIcOutlineStickyNote2,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin: EdgeInsets.only(bottom: 1.v),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 12.h),
                                    child: Text(
                                      "lbl_privacy_policy".tr,
                                      style: CustomTextStyles
                                          .titleMediumPoppinsOnPrimary,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 24.v),
                              Align(
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                  width: 141.h,
                                  child: Divider(
                                    color: appTheme.gray10001,
                                    endIndent: 9.h,
                                  ),
                                ),
                              ),
                              SizedBox(height: 27.v),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgWhhSecurityalt,
                                    height: 19.v,
                                    width: 20.h,
                                    margin: EdgeInsets.only(
                                      top: 1.v,
                                      bottom: 5.v,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 16.h),
                                    child: Text(
                                      "lbl_security".tr,
                                      style: CustomTextStyles
                                          .titleMediumPoppinsOnPrimary,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: Row(
                                  children: [
                                    Text(
                                      "lbl_sign_out".tr,
                                      style: CustomTextStyles
                                          .titleMediumPoppinsOnPrimary,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgArrow1,
                                      height: 2.v,
                                      width: 22.h,
                                      margin: EdgeInsets.only(
                                        left: 12.h,
                                        top: 12.v,
                                        bottom: 11.v,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 581.v,
                          width: 180.h,
                          margin: EdgeInsets.only(
                            left: 18.h,
                            bottom: 72.v,
                          ),
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Opacity(
                                opacity: 0.2,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgImage11,
                                  height: 531.v,
                                  width: 180.h,
                                  radius: BorderRadius.circular(
                                    30.h,
                                  ),
                                  alignment: Alignment.bottomCenter,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgImage10,
                                height: 562.v,
                                width: 160.h,
                                radius: BorderRadius.circular(
                                  30.h,
                                ),
                                alignment: Alignment.topRight,
                              ),
                            ],
                          ),
                        ),
                      ],
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
}
