import 'bloc/iphone_11_pro_max_three_container_bloc.dart';
import 'models/iphone_11_pro_max_three_container_model.dart';
import 'package:delivery_food/core/app_export.dart';
import 'package:delivery_food/presentation/iphone_11_pro_max_three_tab_container_page/iphone_11_pro_max_three_tab_container_page.dart';
import 'package:delivery_food/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone11ProMaxThreeContainerScreen extends StatelessWidget {
  Iphone11ProMaxThreeContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxThreeContainerBloc>(
        create: (context) => Iphone11ProMaxThreeContainerBloc(
            Iphone11ProMaxThreeContainerState(
                iphone11ProMaxThreeContainerModelObj:
                    Iphone11ProMaxThreeContainerModel()))
          ..add(Iphone11ProMaxThreeContainerInitialEvent()),
        child: Iphone11ProMaxThreeContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<Iphone11ProMaxThreeContainerBloc,
        Iphone11ProMaxThreeContainerState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.gray10004,
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.iphone11ProMaxThreeTabContainerPage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 51.h),
                  child: _buildBottomBar(context))));
    });
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Heroiconssolidhome:
        return AppRoutes.iphone11ProMaxThreeTabContainerPage;
      case BottomBarEnum.Heart:
        return "/";
      case BottomBarEnum.User:
        return "/";
      case BottomBarEnum.Icsharphistory:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.iphone11ProMaxThreeTabContainerPage:
        return Iphone11ProMaxThreeTabContainerPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
