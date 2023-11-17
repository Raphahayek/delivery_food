import 'bloc/iphone_11_pro_max_twenty_bloc.dart';
import 'models/iphone_11_pro_max_twenty_model.dart';
import 'package:delivery_food/core/app_export.dart';
import 'package:delivery_food/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class Iphone11ProMaxTwentyScreen extends StatelessWidget {
  const Iphone11ProMaxTwentyScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxTwentyBloc>(
      create: (context) => Iphone11ProMaxTwentyBloc(Iphone11ProMaxTwentyState(
        iphone11ProMaxTwentyModelObj: Iphone11ProMaxTwentyModel(),
      ))
        ..add(Iphone11ProMaxTwentyInitialEvent()),
      child: Iphone11ProMaxTwentyScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Iphone11ProMaxTwentyBloc, Iphone11ProMaxTwentyState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 47.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 7.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroupGray40003,
                    height: 120.v,
                    width: 133.h,
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 84.h),
                  ),
                  SizedBox(height: 25.v),
                  Text(
                    "msg_no_internet_connection".tr,
                    style: theme.textTheme.headlineMedium,
                  ),
                  SizedBox(height: 16.v),
                  Opacity(
                    opacity: 0.57,
                    child: Container(
                      width: 312.h,
                      margin: EdgeInsets.symmetric(horizontal: 4.h),
                      child: Text(
                        "msg_your_internet_connection".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyLargeBlack900,
                      ),
                    ),
                  ),
                  SizedBox(height: 51.v),
                  CustomElevatedButton(
                    text: "lbl_try_again".tr,
                    margin: EdgeInsets.symmetric(horizontal: 3.h),
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
