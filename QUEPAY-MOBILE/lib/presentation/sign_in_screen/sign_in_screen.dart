import 'package:flutter/material.dart';
import 'package:que_pay/core/app_export.dart';
import 'package:que_pay/widgets/app_bar/appbar_leading_image.dart';
import 'package:que_pay/widgets/app_bar/appbar_title.dart';
import 'package:que_pay/widgets/app_bar/appbar_trailing_image.dart';
import 'package:que_pay/widgets/app_bar/custom_app_bar.dart';
import 'package:que_pay/widgets/custom_checkbox_button.dart';
import 'package:que_pay/widgets/custom_elevated_button.dart';
import 'package:que_pay/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool carbon = false;

  bool rememberme = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.blue50,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 53.v),
                    child: Padding(
                        padding: EdgeInsets.only(right: 51.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 24.h),
                                  child: Text("lbl_sign_in".tr,
                                      style: theme.textTheme.headlineLarge)),
                              SizedBox(height: 8.v),
                              Opacity(
                                  opacity: 0.5,
                                  child: Container(
                                      width: 285.h,
                                      margin: EdgeInsets.only(
                                          left: 24.h, right: 69.h),
                                      child: Text(
                                          "msg_sign_into_your_account".tr,
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .titleLargeBlack90001Medium_1))),
                              SizedBox(height: 7.v),
                              _buildFourteen(context),
                              SizedBox(height: 32.v),
                              Align(
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTxtDonthaveanaccount(context);
                                      },
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text:
                                                    "msg_don_t_have_an_account2"
                                                        .tr,
                                                style: CustomTextStyles
                                                    .titleLargeBlack90001SemiBold_1),
                                            TextSpan(
                                                text: "lbl_sign_up".tr,
                                                style: CustomTextStyles
                                                    .titleLargeIndigoA70001)
                                          ]),
                                          textAlign: TextAlign.left))),
                              SizedBox(height: 134.v),
                              Container(
                                  height: 139.v,
                                  width: 158.h,
                                  decoration: BoxDecoration(
                                      color: theme.colorScheme.errorContainer,
                                      borderRadius: BorderRadius.circular(79.h),
                                      boxShadow: [
                                        BoxShadow(
                                            color: theme
                                                .colorScheme.errorContainer
                                                .withOpacity(0.25),
                                            spreadRadius: 2.h,
                                            blurRadius: 2.h,
                                            offset: Offset(15, 4))
                                      ]))
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 91.v,
        leadingWidth: 57.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVector20x32,
            margin: EdgeInsets.only(left: 25.h, top: 66.v, bottom: 5.v),
            onTap: () {
              onTapVector(context);
            }),
        centerTitle: true,
        title: AppbarTitle(
            text: "lbl_welcome_back".tr, margin: EdgeInsets.only(top: 62.v)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgEllipse283x113,
              margin: EdgeInsets.only(bottom: 8.v))
        ]);
  }

  /// Section Widget
  Widget _buildFourteen(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 37.v),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.customBorderLR10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 5.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child:
                      Text("lbl_email".tr, style: theme.textTheme.bodyLarge)),
              CustomTextFormField(
                  controller: emailController,
                  hintText: "lbl_email_gmail_com".tr,
                  hintStyle: CustomTextStyles.titleMediumOnPrimary,
                  textInputType: TextInputType.emailAddress,
                  prefix: Container(
                      margin: EdgeInsets.fromLTRB(8.h, 14.v, 25.h, 14.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgEmailIcon,
                          height: 24.adaptSize,
                          width: 24.adaptSize)),
                  prefixConstraints: BoxConstraints(maxHeight: 52.v)),
              SizedBox(height: 30.v),
              SizedBox(
                  height: 72.v,
                  width: 331.h,
                  child: Stack(alignment: Alignment.topLeft, children: [
                    CustomTextFormField(
                        width: 331.h,
                        controller: passwordController,
                        hintText: "lbl".tr,
                        hintStyle: CustomTextStyles.headlineSmallBlack90001Bold,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        alignment: Alignment.bottomCenter,
                        prefix: Container(
                            margin: EdgeInsets.fromLTRB(8.h, 13.v, 25.h, 15.v),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgPasswordIcon,
                                height: 24.adaptSize,
                                width: 24.adaptSize)),
                        prefixConstraints: BoxConstraints(maxHeight: 52.v),
                        suffix: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 14.v, 10.h, 14.v),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgClarityeyehideline,
                                height: 24.adaptSize,
                                width: 24.adaptSize)),
                        suffixConstraints: BoxConstraints(maxHeight: 52.v),
                        obscureText: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 11.v)),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text("lbl_password".tr,
                            style: theme.textTheme.bodyLarge))
                  ])),
              SizedBox(height: 19.v),
              Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 3.v),
                            child: CustomCheckboxButton(
                                width: 18.h,
                                value: carbon,
                                isRightCheck: true,
                                onChange: (value) {
                                  carbon = value;
                                })),
                        Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: CustomCheckboxButton(
                                text: "lbl_remember_me".tr,
                                value: rememberme,
                                onChange: (value) {
                                  rememberme = value;
                                })),
                        Spacer(),
                        GestureDetector(
                            onTap: () {
                              onTapTxtTypePassword(context);
                            },
                            child: Text("msg_forgot_password".tr,
                                style:
                                    CustomTextStyles.titleMediumBlack9000116_1))
                      ])),
              SizedBox(height: 48.v),
              CustomElevatedButton(
                  text: "lbl_sign_in".tr,
                  buttonStyle: CustomButtonStyles.none,
                  decoration:
                      CustomButtonStyles.gradientBlueToPrimaryTL10Decoration,
                  onPressed: () {
                    onTapSignIn(context);
                  })
            ]));
  }

  /// Navigates to the onboardingScreen when the action is triggered.
  onTapVector(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.onboardingScreen);
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapTxtTypePassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgotPasswordScreen);
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapSignIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtDonthaveanaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
