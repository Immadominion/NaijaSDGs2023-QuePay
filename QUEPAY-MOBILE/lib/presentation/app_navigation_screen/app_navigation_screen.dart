import 'package:flutter/material.dart';
import 'package:que_pay/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2nd Splash Screen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.ndSplashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "3rd Splash Screen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.rdSplashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "4th Splash Screen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.thSplashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "5th Splash Screen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.thSplash1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Verification".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.verificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign In".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forgot Password".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Password Reset One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.passwordResetOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Password Reset Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.passwordResetTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Password Reset".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.passwordResetScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Pass.reset. successfully".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.passResetSuccessfullyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Enter Phone No. - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.enterPhoneNoTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Enter Amount".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.enterAmountScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Confirmation".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.confirmationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Enter Transaction pin".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.enterTransactionPinScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Enter Amount One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.enterAmountOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Account Settings".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountSettingsScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
