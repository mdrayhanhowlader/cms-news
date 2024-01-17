import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../../data/constants/color_constant.dart';
import '../../../data/constants/extensions/text_style_extensions.dart';
import '../local_db_services/local_db_services.dart';

class ThemesData {
  static final ThemeData lightTheme = ThemeData().copyWith(
    scaffoldBackgroundColor: ColorConstant.scaffoldLight,
    primaryColor: ColorConstant.primaryColor,
    primaryColorDark: ColorConstant.primaryDarkColor,
    hoverColor: Colors.white54,
    dividerColor: ColorConstant.viewLineColor,
    textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.black),
    cardTheme: CardTheme(color: Colors.white),
    cardColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.black),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TextTheme().copyWith(
      titleSmall: TextStyle(color: Colors.black),
      bodyMedium: TextStyle(color: Color(0x7F343A40)),
    ),
    pageTransitionsTheme:
        PageTransitionsTheme(builders: <TargetPlatform, PageTransitionsBuilder>{
      TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.linux: OpenUpwardsPageTransitionsBuilder(),
      TargetPlatform.macOS: OpenUpwardsPageTransitionsBuilder(),
    }),
    colorScheme:
        ColorScheme.light(primary: ColorConstant.primaryColor).copyWith(
      primaryContainer: Colors.white,
      onPrimaryContainer: Colors.white,
      secondary: Colors.white,
      secondaryContainer: Color(0xFFFAFAFA),
      tertiary: Color(0xFFD9D9D9),
    ),
    appBarTheme: AppBarTheme(
      color: ColorConstant.whiteColor,
      titleTextStyle: boldTextStyleGoogle(
          size: MediaQueryData.fromWindow(WidgetsBinding.instance.window)
                  .size
                  .height *
              0.025,
          color: ColorConstant.textPrimaryColor),
      iconTheme: IconThemeData(color: ColorConstant.textPrimaryColor),
      systemOverlayStyle:
          SystemUiOverlayStyle(statusBarIconBrightness: Brightness.dark),
    ),
    drawerTheme: DrawerThemeData(
      backgroundColor: Colors.white,
      elevation: 0,
    ),
    tabBarTheme: TabBarTheme().copyWith(
      labelColor: ColorConstant.textColorGlobal,
      unselectedLabelColor: const Color(0xFFB4BDC6),
      indicatorColor: ColorConstant.primaryColor,
    ),
    checkboxTheme: CheckboxThemeData(
      side: BorderSide(color: Colors.black),
      checkColor: MaterialStatePropertyAll(Colors.white),
      fillColor: MaterialStateColor.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.black; // Customize checkbox fill color when selected
        }
        return Colors
            .transparent; // Customize checkbox fill color when not selected
      }), // Customize checkbox checkmark color
    ),
  );

  static final ThemeData darkTheme = ThemeData().copyWith(
    scaffoldBackgroundColor: ColorConstant.scafoldDark,
    primaryColor: ColorConstant.color_primary_black,
    highlightColor: ColorConstant.scafoldDark,
    dividerColor: Color(0xFFDADADA).withOpacity(0.3),
    primaryColorDark: ColorConstant.color_primary_black,
    textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.white),
    hoverColor: Colors.black12,
    bottomSheetTheme:
        BottomSheetThemeData(backgroundColor: ColorConstant.scaffoldDarkColor),
    primaryTextTheme: TextTheme(
        titleLarge: primaryTextStyle(color: Colors.white),
        labelSmall: primaryTextStyle(color: Colors.white)),
    cardTheme: CardTheme(color: ColorConstant.cardBackgroundBlackDark),
    cardColor: ColorConstant.appSecondaryBackgroundColor,
    iconTheme: IconThemeData(color: ColorConstant.whiteColor),
    textTheme: TextTheme().copyWith(
      titleSmall: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Color.fromARGB(98, 255, 255, 255)),
      displayMedium: boldTextStyleGoogle(
          size: MediaQueryData.fromWindow(WidgetsBinding.instance.window)
                  .size
                  .height *
              0.045,
          color: ColorConstant.white),
      displayLarge: boldTextStyleGoogle(
          size: MediaQueryData.fromWindow(WidgetsBinding.instance.window)
                  .size
                  .width *
              0.1,
          color: ColorConstant.white),
      displaySmall: boldTextStyleGoogle(color: ColorConstant.primaryColor),
      labelLarge: boldTextStyleGoogle(color: ColorConstant.white),
      headlineSmall: primaryTextStyleGoogle(
          size: MediaQueryData.fromWindow(WidgetsBinding.instance.window)
                  .size
                  .height *
              0.045,
          color: ColorConstant.white),
      headlineMedium: primaryTextStyleGoogle(
          size: MediaQueryData.fromWindow(WidgetsBinding.instance.window)
                  .size
                  .width *
              0.1,
          color: ColorConstant.white),
      titleLarge: primaryTextStyleGoogle(color: ColorConstant.white),
      titleMedium: secondaryTextStyleGoogle(),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    pageTransitionsTheme:
        PageTransitionsTheme(builders: <TargetPlatform, PageTransitionsBuilder>{
      TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.linux: OpenUpwardsPageTransitionsBuilder(),
      TargetPlatform.macOS: OpenUpwardsPageTransitionsBuilder(),
    }),
    colorScheme: ColorScheme.dark(primary: ColorConstant.primaryColor).copyWith(
      primaryContainer: Color(0xFF2E3439),
      onPrimaryContainer: ColorConstant.scafoldDark,
      secondary: Color(0xFF3D4348),
      secondaryContainer: Color(0xFF2E3439),
      tertiary: ColorConstant.scafoldDark,
    ),
    appBarTheme: AppBarTheme(
      color: ColorConstant.scafoldDark,
      titleTextStyle: boldTextStyleGoogle(
          size: Get.height * 0.025, color: ColorConstant.white),
      iconTheme: IconThemeData(color: ColorConstant.white),
      systemOverlayStyle:
          SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
    ),
    drawerTheme: DrawerThemeData(
      backgroundColor: Color(0xFF2E3439),
      elevation: 0,
    ),
    tabBarTheme: TabBarTheme().copyWith(
      labelColor: ColorConstant.white,
      unselectedLabelColor: const Color(0xFFB4BDC6),
      indicatorColor: const Color(0xFFEEA236),
    ),
    checkboxTheme: CheckboxThemeData(
      checkColor: MaterialStatePropertyAll(Colors.black),
      side: BorderSide(color: Colors.white),
      fillColor: MaterialStateColor.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.white; // Customize checkbox fill color when selected
        }
        return Colors
            .transparent; // Customize checkbox fill color when not selected
      }), // Customize checkbox checkmark color
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(color: Colors.white),
  );

  final localDbService = Get.find<LocalDBService>();

  ThemeMode get theme =>
      localDbService.isDarkMode() ? ThemeMode.dark : ThemeMode.light;

  static void switchThemes() {
    final localDbService = Get.find<LocalDBService>();
    Get.changeThemeMode(
        localDbService.isDarkMode() ? ThemeMode.light : ThemeMode.dark);
    localDbService.setDarkMode(!localDbService.isDarkMode());
  }
}

// *****BOTTOM SHEET LIGHT*****

// bottomSheetTheme:
    //     BottomSheetThemeData(backgroundColor: ColorConstant.whiteColor),
    // textTheme: TextTheme().copyWith(
    //   bodyMedium: primaryTextStyleGoogle(color: ColorConstant.textPrimaryColor),
    //   displayMedium: boldTextStyleGoogle(
    //       size: MediaQueryData.fromWindow(WidgetsBinding.instance.window)
    //               .size
    //               .height *
    //           0.045,
    //       color: ColorConstant.primaryColor),
    //   displayLarge: boldTextStyleGoogle(
    //       size: MediaQueryData.fromWindow(WidgetsBinding.instance.window)
    //               .size
    //               .width *
    //           0.1,
    //       color: ColorConstant.primaryColor),
    //   displaySmall: boldTextStyleGoogle(color: ColorConstant.primaryColor),
    //   labelLarge: boldTextStyleGoogle(color: ColorConstant.white),
    //   headlineSmall: primaryTextStyleGoogle(
    //       size: MediaQueryData.fromWindow(WidgetsBinding.instance.window)
    //               .size
    //               .height *
    //           0.045,
    //       color: ColorConstant.primaryColor),
    //   headlineMedium: primaryTextStyleGoogle(
    //       size: MediaQueryData.fromWindow(WidgetsBinding.instance.window)
    //               .size
    //               .width *
    //           0.1,
    //       color: ColorConstant.primaryColor),
    //   titleLarge: primaryTextStyleGoogle(color: ColorConstant.primaryColor),
    //   titleMedium: secondaryTextStyleGoogle(),
    // ),
