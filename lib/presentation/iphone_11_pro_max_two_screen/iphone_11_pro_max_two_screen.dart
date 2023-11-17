import 'bloc/iphone_11_pro_max_two_bloc.dart';
import 'models/iphone_11_pro_max_two_model.dart';
import 'package:delivery_food/core/app_export.dart';
import 'package:delivery_food/core/utils/validation_functions.dart';
import 'package:delivery_food/widgets/custom_elevated_button.dart';
import 'package:delivery_food/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class Iphone11ProMaxTwoScreen extends StatelessWidget {
  Iphone11ProMaxTwoScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxTwoBloc>(
      create: (context) => Iphone11ProMaxTwoBloc(Iphone11ProMaxTwoState(
        iphone11ProMaxTwoModelObj: Iphone11ProMaxTwoModel(),
      ))
        ..add(Iphone11ProMaxTwoInitialEvent()),
      child: Iphone11ProMaxTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10004,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSeven(context),
                SizedBox(
                  width: 184.h,
                  child: Divider(
                    color: theme.colorScheme.primary,
                    indent: 50.h,
                  ),
                ),
                SizedBox(height: 61.v),
                Opacity(
                  opacity: 0.4,
                  child: Padding(
                    padding: EdgeInsets.only(left: 50.h),
                    child: Text(
                      "lbl_email_address".tr,
                      style: CustomTextStyles.titleSmallSFProTextBlack900,
                    ),
                  ),
                ),
                SizedBox(height: 10.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.h),
                  child: BlocSelector<Iphone11ProMaxTwoBloc,
                      Iphone11ProMaxTwoState, TextEditingController?>(
                    selector: (state) => state.emailController,
                    builder: (context, emailController) {
                      return CustomTextFormField(
                        controller: emailController,
                        hintText: "msg_dosamarvis_gmail_com".tr,
                        textInputType: TextInputType.emailAddress,
                        alignment: Alignment.center,
                        validator: (value) {
                          if (value == null ||
                              (!isValidEmail(value, isRequired: true))) {
                            return "err_msg_please_enter_valid_email".tr;
                          }
                          return null;
                        },
                      );
                    },
                  ),
                ),
                SizedBox(height: 45.v),
                Opacity(
                  opacity: 0.4,
                  child: Padding(
                    padding: EdgeInsets.only(left: 50.h),
                    child: Text(
                      "lbl_password".tr,
                      style: CustomTextStyles.titleSmallSFProTextBlack900,
                    ),
                  ),
                ),
                SizedBox(height: 6.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.h),
                  child: BlocSelector<Iphone11ProMaxTwoBloc,
                      Iphone11ProMaxTwoState, TextEditingController?>(
                    selector: (state) => state.passwordController,
                    builder: (context, passwordController) {
                      return CustomTextFormField(
                        controller: passwordController,
                        hintText: "lbl".tr,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        alignment: Alignment.center,
                        validator: (value) {
                          if (value == null ||
                              (!isValidPassword(value, isRequired: true))) {
                            return "err_msg_please_enter_valid_password".tr;
                          }
                          return null;
                        },
                        obscureText: true,
                      );
                    },
                  ),
                ),
                SizedBox(height: 34.v),
                Padding(
                  padding: EdgeInsets.only(left: 50.h),
                  child: Text(
                    "msg_forgot_passcode".tr,
                    style: CustomTextStyles.titleMediumPrimary,
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildLogin(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeven(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 80.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 98.v),
          SizedBox(
            height: 162.v,
            width: 150.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgBellaOlonjeLogo,
                  height: 162.v,
                  width: 131.h,
                  alignment: Alignment.centerLeft,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVector1,
                  height: 115.v,
                  width: 59.h,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(bottom: 9.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 55.v),
          Padding(
            padding: EdgeInsets.only(left: 9.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_login".tr,
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  "lbl_sign_up".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLogin(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_login".tr,
      margin: EdgeInsets.only(
        left: 50.h,
        right: 50.h,
        bottom: 41.v,
      ),
    );
  }
}
