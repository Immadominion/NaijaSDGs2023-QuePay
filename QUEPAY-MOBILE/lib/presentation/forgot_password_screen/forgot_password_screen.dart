import 'package:flutter/material.dart';
import 'package:que_pay/core/app_export.dart';
import 'package:que_pay/widgets/app_bar/appbar_leading_image.dart';
import 'package:que_pay/widgets/app_bar/appbar_title.dart';
import 'package:que_pay/widgets/app_bar/custom_app_bar.dart';
import 'package:que_pay/widgets/custom_elevated_button.dart';
import 'package:que_pay/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

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
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 24.h, vertical: 37.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("msg_reset_your_password".tr,
                              style: theme.textTheme.headlineLarge),
                          SizedBox(height: 8.v),
                          Opacity(
                              opacity: 0.5,
                              child: Container(
                                  width: 309.h,
                                  margin: EdgeInsets.only(right: 72.h),
                                  child: Text("msg_provide_your_email".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .titleLargeBlack90001Medium_1))),
                          SizedBox(height: 71.v),
                          Padding(
                              padding: EdgeInsets.only(left: 25.h),
                              child: Text("lbl_email".tr,
                                  style: CustomTextStyles.bodyLargeBlack90001)),
                          Padding(
                              padding: EdgeInsets.only(left: 25.h, right: 26.h),
                              child: CustomTextFormField(
                                  controller: emailController,
                                  hintText: "lbl_email_gmail_com".tr,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.emailAddress,
                                  alignment: Alignment.center,
                                  prefix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          8.h, 14.v, 26.h, 14.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgEmailIcon,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize)),
                                  prefixConstraints:
                                      BoxConstraints(maxHeight: 52.v))),
                          Spacer(),
                          CustomElevatedButton(
                              text: "lbl_continue".tr,
                              margin: EdgeInsets.only(left: 25.h, right: 26.h),
                              buttonStyle: CustomButtonStyles.none,
                              decoration: CustomButtonStyles
                                  .gradientBlueToPrimaryTL10Decoration,
                              onPressed: () {
                                onTapContinue(context);
                              },
                              alignment: Alignment.center),
                          SizedBox(height: 32.v),
                          Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtRememberyourpassword(context);
                                  },
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_remember_your_password2"
                                                .tr,
                                            style: CustomTextStyles
                                                .titleLargeBlack90001SemiBold_1),
                                        TextSpan(
                                            text: "lbl_sign_in".tr,
                                            style: CustomTextStyles
                                                .titleLargeIndigoA70001)
                                      ]),
                                      textAlign: TextAlign.left))),
                          SizedBox(height: 39.v)
                        ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 57.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVector20x32,
            margin: EdgeInsets.only(left: 25.h, top: 14.v, bottom: 21.v)),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_forgot_password".tr));
  }

  /// Navigates to the passwordResetOneScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.passwordResetOneScreen);
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapTxtRememberyourpassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }
}
