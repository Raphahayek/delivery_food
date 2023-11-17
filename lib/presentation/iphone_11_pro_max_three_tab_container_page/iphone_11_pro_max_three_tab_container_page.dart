import 'bloc/iphone_11_pro_max_three_tab_container_bloc.dart';
import 'models/iphone_11_pro_max_three_tab_container_model.dart';
import 'package:delivery_food/core/app_export.dart';
import 'package:delivery_food/presentation/iphone_11_pro_max_three_page/iphone_11_pro_max_three_page.dart';
import 'package:delivery_food/widgets/app_bar/appbar_leading_image.dart';
import 'package:delivery_food/widgets/app_bar/appbar_trailing_image.dart';
import 'package:delivery_food/widgets/app_bar/custom_app_bar.dart';
import 'package:delivery_food/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone11ProMaxThreeTabContainerPage extends StatefulWidget {
  const Iphone11ProMaxThreeTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone11ProMaxThreeTabContainerPageState createState() =>
      Iphone11ProMaxThreeTabContainerPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxThreeTabContainerBloc>(
      create: (context) => Iphone11ProMaxThreeTabContainerBloc(
          Iphone11ProMaxThreeTabContainerState(
        iphone11ProMaxThreeTabContainerModelObj:
            Iphone11ProMaxThreeTabContainerModel(),
      ))
        ..add(Iphone11ProMaxThreeTabContainerInitialEvent()),
      child: Iphone11ProMaxThreeTabContainerPage(),
    );
  }
}

class Iphone11ProMaxThreeTabContainerPageState
    extends State<Iphone11ProMaxThreeTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10004,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 26.v),
              Container(
                width: 185.h,
                margin: EdgeInsets.only(left: 50.h),
                child: Text(
                  "msg_delicious_food".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.displaySmallSFProRounded,
                ),
              ),
              SizedBox(height: 21.v),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.h),
                  child: BlocSelector<
                      Iphone11ProMaxThreeTabContainerBloc,
                      Iphone11ProMaxThreeTabContainerState,
                      TextEditingController?>(
                    selector: (state) => state.searchController,
                    builder: (context, searchController) {
                      return CustomSearchView(
                        controller: searchController,
                        hintText: "lbl_search".tr,
                        alignment: Alignment.center,
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 45.v),
              _buildTabview(context),
              SizedBox(
                height: 437.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    Iphone11ProMaxThreePage.builder(context),
                    Iphone11ProMaxThreePage.builder(context),
                    Iphone11ProMaxThreePage.builder(context),
                    Iphone11ProMaxThreePage.builder(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 76.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMenu,
        margin: EdgeInsets.only(
          left: 54.h,
          top: 25.v,
          bottom: 17.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgShoppingCart,
          margin: EdgeInsets.symmetric(
            horizontal: 41.h,
            vertical: 16.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 33.v,
      width: 346.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: theme.colorScheme.primary,
        labelStyle: TextStyle(
          fontSize: 17.fSize,
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.gray500,
        unselectedLabelStyle: TextStyle(
          fontSize: 17.fSize,
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w400,
        ),
        indicatorColor: theme.colorScheme.primary,
        tabs: [
          Tab(
            child: Text(
              "lbl_foods".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_drinks".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_snacks".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_sauce".tr,
            ),
          ),
        ],
      ),
    );
  }
}
