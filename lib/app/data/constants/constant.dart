
import 'package:flutter/material.dart';

import 'color_constant.dart';

/**
 * Created by Haziq 23/04/22
 */

class ConstantValue{

  static final String dbName = 'localDB';
  static final String sysDbName = 'SysLocalDB';
  static final String schDbName = 'SCHLocalDB';

  static final String firebaseDemoField = 'messages';


  static double textBoldSizeGlobal = 16;
  static double textPrimarySizeGlobal = 16;
  static double textSecondarySizeGlobal = 14;
  static String? fontFamilyBoldGlobal;
  static String? fontFamilyPrimaryGlobal;
  static String? fontFamilySecondaryGlobal;
  static FontWeight fontWeightBoldGlobal = FontWeight.bold;
  static FontWeight fontWeightPrimaryGlobal = FontWeight.normal;
  static FontWeight fontWeightSecondaryGlobal = FontWeight.normal;
  static Color appBarBackgroundColorGlobal = Colors.white;
  static Color appButtonBackgroundColorGlobal = Colors.white;
  static Color defaultAppButtonTextColorGlobal = ColorConstant.textPrimaryColorGlobal;
  static double defaultAppButtonRadius = 8.0;
  static double defaultAppButtonElevation = 4.0;
  static bool enableAppButtonScaleAnimationGlobal = true;
  static int? appButtonScaleAnimationDurationGlobal;
  static ShapeBorder? defaultAppButtonShapeBorder;
  static Color defaultLoaderBgColorGlobal = Colors.white;
  static Color? defaultLoaderAccentColorGlobal;
  static Color? defaultInkWellSplashColor;
  static Color? defaultInkWellHoverColor;
  static Color? defaultInkWellHighlightColor;
  static double? defaultInkWellRadius;

  static Color shadowColorGlobal = Colors.grey.withOpacity(0.2);
  static int defaultElevation = 4;
  static double defaultRadius = 8.0;
  static double defaultBlurRadius = 4.0;
  static double defaultSpreadRadius = 1.0;
  static double defaultAppBarElevation = 4.0;
  static double tabletBreakpointGlobal = 600.0;
  static double desktopBreakpointGlobal = 720.0;
  static int passwordLengthGlobal = 6;

  static String errorMessage = 'Please try again';
  static String errorSomethingWentWrong = 'Something Went Wrong';
  static String errorThisFieldRequired = 'This field is required';
  static String errorInternetNotAvailable = 'Your internet is not working';

  var customDialogHeight = 140.0;
  var customDialogWidth = 220.0;

  static String currencyRupee = '₹';
  static String currencyDollar = '\$';
  static String currencyEuro = '€';
  static String playStoreBaseURL = 'https://play.google.com/store/apps/details?id=';
  static String appStoreBaseURL = 'https://apps.apple.com/in/app/';
  static String facebookBaseURL = 'https://www.facebook.com/';
  static String instagramBaseURL = 'https://www.instagram.com/';
  static String linkedinBaseURL = 'https://www.linkedin.com/in/';
  static String twitterBaseURL = 'https://twitter.com/';
  static String youtubeBaseURL = 'https://www.youtube.com/';
  static String redditBaseURL = 'https://reddit.com/r/';
  static String telegramBaseURL = 'https://t.me/';
  static String facebookMessengerURL = 'https://m.me/';
  static String whatsappURL = 'https://wa.me/';
  static String SELECTED_LANGUAGE_CODE = 'selected_language_code';
  static String THEME_MODE_INDEX = 'theme_mode_index';


}