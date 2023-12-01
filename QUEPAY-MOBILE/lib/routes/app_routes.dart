import 'package:flutter/material.dart';
import 'package:que_pay/presentation/splash_screen/splash_screen.dart';
import 'package:que_pay/presentation/nd_splash_screen/nd_splash_screen.dart';
import 'package:que_pay/presentation/rd_splash_screen/rd_splash_screen.dart';
import 'package:que_pay/presentation/th_splash_screen/th_splash_screen.dart';
import 'package:que_pay/presentation/th_splash1_screen/th_splash1_screen.dart';
import 'package:que_pay/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:que_pay/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:que_pay/presentation/verification_screen/verification_screen.dart';
import 'package:que_pay/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:que_pay/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:que_pay/presentation/password_reset_one_screen/password_reset_one_screen.dart';
import 'package:que_pay/presentation/password_reset_two_screen/password_reset_two_screen.dart';
import 'package:que_pay/presentation/password_reset_screen/password_reset_screen.dart';
import 'package:que_pay/presentation/pass_reset_successfully_screen/pass_reset_successfully_screen.dart';
import 'package:que_pay/presentation/home_container_screen/home_container_screen.dart';
import 'package:que_pay/presentation/enter_phone_no_tab_container_screen/enter_phone_no_tab_container_screen.dart';
import 'package:que_pay/presentation/enter_amount_screen/enter_amount_screen.dart';
import 'package:que_pay/presentation/confirmation_screen/confirmation_screen.dart';
import 'package:que_pay/presentation/enter_transaction_pin_screen/enter_transaction_pin_screen.dart';
import 'package:que_pay/presentation/enter_amount_one_screen/enter_amount_one_screen.dart';
import 'package:que_pay/presentation/account_settings_screen/account_settings_screen.dart';
import 'package:que_pay/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String ndSplashScreen = '/nd_splash_screen';

  static const String rdSplashScreen = '/rd_splash_screen';

  static const String thSplashScreen = '/th_splash_screen';

  static const String thSplash1Screen = '/th_splash1_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String verificationScreen = '/verification_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String passwordResetOneScreen = '/password_reset_one_screen';

  static const String passwordResetTwoScreen = '/password_reset_two_screen';

  static const String passwordResetScreen = '/password_reset_screen';

  static const String passResetSuccessfullyScreen =
      '/pass_reset_successfully_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String sendMoneyPage = '/send_money_page';

  static const String enterPhoneNoOnePage = '/enter_phone_no_one_page';

  static const String enterPhoneNoPage = '/enter_phone_no_page';

  static const String enterPhoneNoTabContainerScreen =
      '/enter_phone_no_tab_container_screen';

  static const String enterAmountScreen = '/enter_amount_screen';

  static const String confirmationScreen = '/confirmation_screen';

  static const String enterTransactionPinScreen =
      '/enter_transaction_pin_screen';

  static const String enterAmountOneScreen = '/enter_amount_one_screen';

  static const String transactionsPage = '/transactions_page';

  static const String profilePage = '/profile_page';

  static const String accountSettingsScreen = '/account_settings_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    ndSplashScreen: (context) => NdSplashScreen(),
    rdSplashScreen: (context) => RdSplashScreen(),
    thSplashScreen: (context) => ThSplashScreen(),
    thSplash1Screen: (context) => ThSplash1Screen(),
    onboardingScreen: (context) => OnboardingScreen(),
    signUpScreen: (context) => SignUpScreen(),
    verificationScreen: (context) => VerificationScreen(),
    signInScreen: (context) => SignInScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    passwordResetOneScreen: (context) => PasswordResetOneScreen(),
    passwordResetTwoScreen: (context) => PasswordResetTwoScreen(),
    passwordResetScreen: (context) => PasswordResetScreen(),
    passResetSuccessfullyScreen: (context) => PassResetSuccessfullyScreen(),
    homeContainerScreen: (context) => HomeContainerScreen(),
    enterPhoneNoTabContainerScreen: (context) =>
        EnterPhoneNoTabContainerScreen(),
    enterAmountScreen: (context) => EnterAmountScreen(),
    confirmationScreen: (context) => ConfirmationScreen(),
    enterTransactionPinScreen: (context) => EnterTransactionPinScreen(),
    enterAmountOneScreen: (context) => EnterAmountOneScreen(),
    accountSettingsScreen: (context) => AccountSettingsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
