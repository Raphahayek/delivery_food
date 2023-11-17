import 'package:flutter/material.dart';
import 'package:delivery_food/presentation/iphone_11_pro_max_one_screen/iphone_11_pro_max_one_screen.dart';
import 'package:delivery_food/presentation/iphone_11_pro_max_two_screen/iphone_11_pro_max_two_screen.dart';
import 'package:delivery_food/presentation/iphone_11_pro_max_three_container_screen/iphone_11_pro_max_three_container_screen.dart';
import 'package:delivery_food/presentation/iphone_11_pro_max_fifteen_screen/iphone_11_pro_max_fifteen_screen.dart';
import 'package:delivery_food/presentation/iphone_11_pro_max_sixteen_screen/iphone_11_pro_max_sixteen_screen.dart';
import 'package:delivery_food/presentation/iphone_11_pro_max_five_screen/iphone_11_pro_max_five_screen.dart';
import 'package:delivery_food/presentation/iphone_11_pro_max_six_screen/iphone_11_pro_max_six_screen.dart';
import 'package:delivery_food/presentation/iphone_11_pro_max_four_screen/iphone_11_pro_max_four_screen.dart';
import 'package:delivery_food/presentation/iphone_11_pro_max_eighteen_screen/iphone_11_pro_max_eighteen_screen.dart';
import 'package:delivery_food/presentation/iphone_11_pro_max_twenty_screen/iphone_11_pro_max_twenty_screen.dart';
import 'package:delivery_food/presentation/iphone_11_pro_max_eight_screen/iphone_11_pro_max_eight_screen.dart';
import 'package:delivery_food/presentation/iphone_11_pro_max_seven_screen/iphone_11_pro_max_seven_screen.dart';
import 'package:delivery_food/presentation/iphone_11_pro_max_twentyone_screen/iphone_11_pro_max_twentyone_screen.dart';
import 'package:delivery_food/presentation/iphone_11_pro_max_nine_screen/iphone_11_pro_max_nine_screen.dart';
import 'package:delivery_food/presentation/iphone_11_pro_max_thirteen_screen/iphone_11_pro_max_thirteen_screen.dart';
import 'package:delivery_food/presentation/iphone_11_pro_max_ten_screen/iphone_11_pro_max_ten_screen.dart';
import 'package:delivery_food/presentation/iphone_11_pro_max_eleven_screen/iphone_11_pro_max_eleven_screen.dart';
import 'package:delivery_food/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String iphone11ProMaxOneScreen = '/iphone_11_pro_max_one_screen';

  static const String iphone11ProMaxTwoScreen = '/iphone_11_pro_max_two_screen';

  static const String iphone11ProMaxThreePage = '/iphone_11_pro_max_three_page';

  static const String iphone11ProMaxThreeTabContainerPage =
      '/iphone_11_pro_max_three_tab_container_page';

  static const String iphone11ProMaxThreeContainerScreen =
      '/iphone_11_pro_max_three_container_screen';

  static const String iphone11ProMaxFifteenScreen =
      '/iphone_11_pro_max_fifteen_screen';

  static const String iphone11ProMaxSixteenScreen =
      '/iphone_11_pro_max_sixteen_screen';

  static const String iphone11ProMaxFiveScreen =
      '/iphone_11_pro_max_five_screen';

  static const String iphone11ProMaxSixScreen = '/iphone_11_pro_max_six_screen';

  static const String iphone11ProMaxFourScreen =
      '/iphone_11_pro_max_four_screen';

  static const String iphone11ProMaxEighteenScreen =
      '/iphone_11_pro_max_eighteen_screen';

  static const String iphone11ProMaxTwentyScreen =
      '/iphone_11_pro_max_twenty_screen';

  static const String iphone11ProMaxEightScreen =
      '/iphone_11_pro_max_eight_screen';

  static const String iphone11ProMaxSevenScreen =
      '/iphone_11_pro_max_seven_screen';

  static const String iphone11ProMaxTwentyoneScreen =
      '/iphone_11_pro_max_twentyone_screen';

  static const String iphone11ProMaxNineScreen =
      '/iphone_11_pro_max_nine_screen';

  static const String iphone11ProMaxThirteenScreen =
      '/iphone_11_pro_max_thirteen_screen';

  static const String iphone11ProMaxTenScreen = '/iphone_11_pro_max_ten_screen';

  static const String iphone11ProMaxElevenScreen =
      '/iphone_11_pro_max_eleven_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        iphone11ProMaxOneScreen: Iphone11ProMaxOneScreen.builder,
        iphone11ProMaxTwoScreen: Iphone11ProMaxTwoScreen.builder,
        iphone11ProMaxThreeContainerScreen:
            Iphone11ProMaxThreeContainerScreen.builder,
        iphone11ProMaxFifteenScreen: Iphone11ProMaxFifteenScreen.builder,
        iphone11ProMaxSixteenScreen: Iphone11ProMaxSixteenScreen.builder,
        iphone11ProMaxFiveScreen: Iphone11ProMaxFiveScreen.builder,
        iphone11ProMaxSixScreen: Iphone11ProMaxSixScreen.builder,
        iphone11ProMaxFourScreen: Iphone11ProMaxFourScreen.builder,
        iphone11ProMaxEighteenScreen: Iphone11ProMaxEighteenScreen.builder,
        iphone11ProMaxTwentyScreen: Iphone11ProMaxTwentyScreen.builder,
        iphone11ProMaxEightScreen: Iphone11ProMaxEightScreen.builder,
        iphone11ProMaxSevenScreen: Iphone11ProMaxSevenScreen.builder,
        iphone11ProMaxTwentyoneScreen: Iphone11ProMaxTwentyoneScreen.builder,
        iphone11ProMaxNineScreen: Iphone11ProMaxNineScreen.builder,
        iphone11ProMaxThirteenScreen: Iphone11ProMaxThirteenScreen.builder,
        iphone11ProMaxTenScreen: Iphone11ProMaxTenScreen.builder,
        iphone11ProMaxElevenScreen: Iphone11ProMaxElevenScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: Iphone11ProMaxOneScreen.builder
      };
}
