import 'package:flutter/material.dart';
import 'package:que_pay/core/app_export.dart';
import 'package:que_pay/widgets/app_bar/appbar_leading_image.dart';
import 'package:que_pay/widgets/app_bar/appbar_title.dart';
import 'package:que_pay/widgets/app_bar/appbar_trailing_image.dart';
import 'package:que_pay/widgets/app_bar/custom_app_bar.dart';
import 'package:que_pay/widgets/custom_elevated_button.dart';
import 'package:que_pay/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PasswordResetScreen extends StatelessWidget {
  PasswordResetScreen({Key? key}) : super(key: key);

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SafeArea(
          child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                  padding: EdgeInsets.only(top: 51.v),
                  child: Padding(
                      padding: EdgeInsets.only(right: 50.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 24.h),
                                child: Text("msg_set_new_password".tr,
                                    style: theme.textTheme.headlineLarge)),
                            SizedBox(height: 72.v),
                            _buildOne(context),
                            SizedBox(height: 111.v),
                            CustomElevatedButton(
                                text: "lbl_continue".tr,
                                margin: EdgeInsets.only(left: 49.h),
                                buttonStyle: CustomButtonStyles.none,
                                decoration: CustomButtonStyles
                                    .gradientBlueToOnErrorDecoration,
                                onPressed: () {
                                  onTapContinue(context);
                                },
                                alignment: Alignment.centerRight),
                            SizedBox(height: 181.v),
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
                          ])))),
        ));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 91.v,
        leadingWidth: 58.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVector20x32,
            margin: EdgeInsets.only(left: 26.h, top: 66.v, bottom: 5.v),
            onTap: () {
              onTapVector(context);
            }),
        title: AppbarTitle(
            text: "lbl_password_reset".tr,
            margin: EdgeInsets.only(left: 57.h, top: 62.v)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgEllipse21,
              margin: EdgeInsets.only(bottom: 8.v))
        ]);
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 50.v),
        decoration: AppDecoration.outlineBlack90001
            .copyWith(borderRadius: BorderRadiusStyle.customBorderLR10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text("lbl_new_password".tr,
                      style: CustomTextStyles.bodyLargeBlack90001_1)),
              Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: CustomTextFormField(
                      controller: passwordController,
                      hintText: "lbl_type_password".tr,
                      textInputType: TextInputType.visiblePassword,
                      prefix: Container(
                          margin: EdgeInsets.fromLTRB(8.h, 13.v, 25.h, 15.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgPasswordIcon,
                              height: 24.adaptSize,
                              width: 24.adaptSize)),
                      prefixConstraints: BoxConstraints(maxHeight: 52.v),
                      suffix: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 14.v, 15.h, 14.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgShowPassword,
                              height: 24.adaptSize,
                              width: 24.adaptSize)),
                      suffixConstraints: BoxConstraints(maxHeight: 52.v),
                      obscureText: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 15.v))),
              SizedBox(height: 18.v),
              Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text("msg_confirm_password".tr,
                      style: CustomTextStyles.bodyLargeBlack90001_1)),
              Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: CustomTextFormField(
                      controller: confirmpasswordController,
                      hintText: "msg_confirm_password".tr,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      prefix: Container(
                          margin: EdgeInsets.fromLTRB(8.h, 14.v, 25.h, 14.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgPasswordIcon,
                              height: 24.adaptSize,
                              width: 24.adaptSize)),
                      prefixConstraints: BoxConstraints(maxHeight: 52.v),
                      suffix: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 13.v, 15.h, 15.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgShowPassword,
                              height: 24.adaptSize,
                              width: 24.adaptSize)),
                      suffixConstraints: BoxConstraints(maxHeight: 52.v),
                      obscureText: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 15.v)))
            ]));
  }

  /// Navigates to the passwordResetTwoScreen when the action is triggered.
  onTapVector(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.passwordResetTwoScreen);
  }

  /// Navigates to the passResetSuccessfullyScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.passResetSuccessfullyScreen);
  }
}
