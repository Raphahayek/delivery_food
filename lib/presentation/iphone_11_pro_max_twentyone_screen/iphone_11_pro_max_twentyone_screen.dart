import 'bloc/iphone_11_pro_max_twentyone_bloc.dart';
import 'models/iphone_11_pro_max_twentyone_model.dart';
import 'package:delivery_food/core/app_export.dart';
import 'package:flutter/material.dart';

class Iphone11ProMaxTwentyoneScreen extends StatelessWidget {
  const Iphone11ProMaxTwentyoneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxTwentyoneBloc>(
        create: (context) => Iphone11ProMaxTwentyoneBloc(
            Iphone11ProMaxTwentyoneState(
                iphone11ProMaxTwentyoneModelObj:
                    Iphone11ProMaxTwentyoneModel()))
          ..add(Iphone11ProMaxTwentyoneInitialEvent()),
        child: Iphone11ProMaxTwentyoneScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<Iphone11ProMaxTwentyoneBloc,
        Iphone11ProMaxTwentyoneState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 41.h, vertical: 60.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowLeft,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            onTap: () {
                              onTapImgArrowLeft(context);
                            }),
                        SizedBox(height: 42.v),
                        Padding(
                            padding: EdgeInsets.only(left: 9.h),
                            child: Text("lbl_my_offers".tr,
                                style: CustomTextStyles.displaySmallPoppins)),
                        Spacer(flex: 56),
                        Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text("msg_ohh_snap_no_offers".tr,
                                style: CustomTextStyles.headlineMediumPoppins)),
                        SizedBox(height: 5.v),
                        Align(
                            alignment: Alignment.center,
                            child: Opacity(
                                opacity: 0.57,
                                child: Container(
                                    width: 233.h,
                                    margin: EdgeInsets.only(
                                        left: 50.h, right: 49.h),
                                    child: Text("msg_bella_dose_t_have".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: CustomTextStyles
                                            .bodyLargePoppinsBlack900)))),
                        Spacer(flex: 43)
                      ]))));
    });
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
