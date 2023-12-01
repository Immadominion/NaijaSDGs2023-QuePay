import 'package:flutter/material.dart';
import 'package:que_pay/core/app_export.dart';
import 'package:que_pay/presentation/home_page/home_page.dart';
import 'package:que_pay/presentation/profile_page/profile_page.dart';
import 'package:que_pay/presentation/transactions_page/transactions_page.dart';
import 'package:que_pay/widgets/app_bar/appbar_leading_image.dart';
import 'package:que_pay/widgets/app_bar/appbar_title.dart';
import 'package:que_pay/widgets/app_bar/custom_app_bar.dart';
import 'package:que_pay/widgets/custom_bottom_bar.dart';
import 'package:que_pay/widgets/custom_elevated_button.dart';

class AccountSettingsScreen extends StatelessWidget {
  AccountSettingsScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      appBar: _buildAppBar(context),
      body: SafeArea(
        child: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  Text(
                    "msg_account_info_settings".tr,
                    style: CustomTextStyles.titleMediumGray400,
                  ),
                  SizedBox(height: 40.v),
                  _buildAccountInformation(context),
                  SizedBox(height: 20.v),
                  _buildNotifications(context),
                  SizedBox(height: 31.v),
                  CustomElevatedButton(
                    text: "lbl_logout".tr,
                    margin: EdgeInsets.only(
                      left: 50.h,
                      right: 49.h,
                    ),
                    buttonStyle: CustomButtonStyles.none,
                    decoration:
                        CustomButtonStyles.gradientBlueToPrimaryTL10Decoration,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomBar(context),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 58.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVector20x32,
        margin: EdgeInsets.only(
          left: 26.h,
          top: 14.v,
          bottom: 21.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "msg_account_settings".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildAccountInformation(BuildContext context) {
    return SizedBox(
      height: 363.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 26.h,
                vertical: 21.v,
              ),
              decoration: AppDecoration.fillGray100021.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(right: 12.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "msg_account_information".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgVectorGray40013x8,
                            height: 13.v,
                            width: 8.h,
                            margin: EdgeInsets.only(
                              top: 7.v,
                              bottom: 3.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Divider(
                    indent: 14.h,
                    endIndent: 12.h,
                  ),
                  SizedBox(height: 23.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 2.h,
                      right: 12.h,
                    ),
                    child: _buildChangePin(
                      context,
                      changePinText: "msg_payment_settings".tr,
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Divider(
                    indent: 14.h,
                    endIndent: 12.h,
                  ),
                  SizedBox(height: 24.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 2.h,
                      right: 12.h,
                    ),
                    child: _buildChangePin(
                      context,
                      changePinText: "lbl_change_pin".tr,
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Divider(
                    indent: 14.h,
                    endIndent: 12.h,
                  ),
                  SizedBox(height: 24.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 2.h,
                      right: 12.h,
                    ),
                    child: _buildChangePin(
                      context,
                      changePinText: "msg_security_question".tr,
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Divider(
                    indent: 14.h,
                    endIndent: 12.h,
                  ),
                  SizedBox(height: 21.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 2.h,
                      right: 12.h,
                    ),
                    child: _buildChangePin(
                      context,
                      changePinText: "msg_account_statement".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 26.h),
              child: Text(
                "lbl_account".tr,
                style: CustomTextStyles.bodyLargeBlack9000116,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNotifications(BuildContext context) {
    return SizedBox(
      height: 363.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 26.h,
                vertical: 19.v,
              ),
              decoration: AppDecoration.fillGray100021.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 5.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child: Text(
                            "lbl_notifications".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgOn,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Divider(
                    indent: 14.h,
                    endIndent: 13.h,
                  ),
                  SizedBox(height: 21.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 2.h,
                      right: 5.h,
                    ),
                    child: _buildDarkMode(
                      context,
                      darkMode: "msg_biometric_authentication".tr,
                      off: ImageConstant.imgOff,
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Divider(
                    indent: 14.h,
                    endIndent: 13.h,
                  ),
                  SizedBox(height: 22.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 2.h,
                      right: 5.h,
                    ),
                    child: _buildDarkMode(
                      context,
                      darkMode: "lbl_dark_mode".tr,
                      off: ImageConstant.imgOff,
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Divider(
                    indent: 14.h,
                    endIndent: 13.h,
                  ),
                  SizedBox(height: 22.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 2.h,
                      right: 5.h,
                    ),
                    child: _buildDarkMode(
                      context,
                      darkMode: "lbl_close_account".tr,
                      off: ImageConstant.imgMaterialSymbolsModeOffOn,
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Divider(
                    indent: 14.h,
                    endIndent: 13.h,
                  ),
                  SizedBox(height: 21.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 2.h,
                      right: 5.h,
                    ),
                    child: _buildDarkMode(
                      context,
                      darkMode: "lbl_about_quepay".tr,
                      off: ImageConstant.imgMdiAboutCircleOutline,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 26.h),
              child: Text(
                "lbl_general".tr,
                style: CustomTextStyles.bodyLargeBlack9000116,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildChangePin(
    BuildContext context, {
    required String changePinText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          changePinText,
          style: theme.textTheme.titleLarge!.copyWith(
            color: appTheme.black90001,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgVectorGray40013x8,
          height: 13.v,
          width: 8.h,
          margin: EdgeInsets.only(
            top: 3.v,
            bottom: 6.v,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildDarkMode(
    BuildContext context, {
    required String darkMode,
    required String off,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          darkMode,
          style: theme.textTheme.titleLarge!.copyWith(
            color: appTheme.black90001,
          ),
        ),
        CustomImageView(
          imagePath: off,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ],
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Finance:
        return "/";
      case BottomBarEnum.Transactions:
        return AppRoutes.transactionsPage;
      case BottomBarEnum.Me:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.transactionsPage:
        return TransactionsPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
