import 'package:flutter/material.dart';
import 'package:que_pay/core/app_export.dart';
import 'package:que_pay/widgets/app_bar/appbar_leading_image.dart';
import 'package:que_pay/widgets/app_bar/appbar_title.dart';
import 'package:que_pay/widgets/app_bar/appbar_trailing_image.dart';
import 'package:que_pay/widgets/app_bar/custom_app_bar.dart';
import 'package:que_pay/widgets/custom_elevated_button.dart';
import 'package:que_pay/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController userController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phonenumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordController1 = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: appTheme.blue50,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SafeArea(
          child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                  padding: EdgeInsets.only(top: 51.v),
                  child: Padding(
                      padding: EdgeInsets.only(right: 52.h, bottom: 5.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 24.h),
                                child: Text("msg_create_your_account".tr,
                                    style: theme.textTheme.headlineLarge)),
                            SizedBox(height: 8.v),
                            Opacity(
                                opacity: 0.5,
                                child: Container(
                                    width: 313.h,
                                    margin: EdgeInsets.only(
                                        left: 24.h, right: 40.h),
                                    child: Text("msg_please_provide_a".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .titleLargeBlack90001Medium_1))),
                            SizedBox(height: 7.v),
                            Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 23.h, vertical: 22.v),
                                decoration: AppDecoration.outlineBlack.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderLR10),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 3.h),
                                              child: Text("lbl_full_name".tr,
                                                  style: theme
                                                      .textTheme.bodyLarge))),
                                      _buildUser(context),
                                      SizedBox(height: 16.v),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 3.h),
                                              child: Text("lbl_email".tr,
                                                  style: theme
                                                      .textTheme.bodyLarge))),
                                      _buildEmail(context),
                                      SizedBox(height: 17.v),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 3.h),
                                              child: Text("lbl_phone".tr,
                                                  style: theme
                                                      .textTheme.bodyLarge))),
                                      Container(
                                          margin: EdgeInsets.only(left: 3.h),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 6.h, vertical: 4.v),
                                          decoration: AppDecoration
                                              .fillOnErrorContainer,
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 11.v,
                                                        bottom: 10.v),
                                                    child: Text("lbl_ng_234".tr,
                                                        style: CustomTextStyles
                                                            .titleMediumBlack90001)),
                                                CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgFrame1,
                                                    height: 8.v,
                                                    width: 15.h,
                                                    margin: EdgeInsets.only(
                                                        left: 19.h,
                                                        top: 18.v,
                                                        bottom: 17.v)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 7.h),
                                                    child: SizedBox(
                                                        height: 44.v,
                                                        child: VerticalDivider(
                                                            width: 2.h,
                                                            thickness: 2.v,
                                                            color: appTheme
                                                                .blueGray100))),
                                                _buildPhonenumber(context)
                                              ])),
                                      SizedBox(height: 17.v),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 3.h),
                                              child: Text("lbl_password".tr,
                                                  style: theme
                                                      .textTheme.bodyLarge))),
                                      _buildPassword(context),
                                      SizedBox(height: 18.v),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 3.h),
                                              child: Text(
                                                  "msg_re_type_password".tr,
                                                  style: theme
                                                      .textTheme.bodyLarge))),
                                      _buildPassword1(context),
                                      SizedBox(height: 37.v),
                                      _buildCreateAccount(context),
                                      SizedBox(height: 9.v)
                                    ])),
                            SizedBox(height: 24.v),
                            Align(
                                alignment: Alignment.centerRight,
                                child: GestureDetector(
                                    onTap: () {
                                      onTapTxtAlreadyhavean(context);
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(right: 18.h),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text:
                                                      "msg_already_have_an2".tr,
                                                  style: CustomTextStyles
                                                      .titleLargeBlack90001SemiBold_1),
                                              TextSpan(
                                                  text: "lbl_sign_in".tr,
                                                  style: CustomTextStyles
                                                      .titleLargeIndigoA70001)
                                            ]),
                                            textAlign: TextAlign.left))))
                          ])))),
        ));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 93.v,
        leadingWidth: 58.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVectorIndigoA70001,
            margin: EdgeInsets.only(left: 26.h, top: 66.v, bottom: 7.v),
            onTap: () {
              onTapVector(context);
            }),
        centerTitle: true,
        title: AppbarTitle(
            text: "lbl_sign_up".tr, margin: EdgeInsets.only(top: 64.v)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgEllipse2,
              margin: EdgeInsets.only(bottom: 26.v))
        ]);
  }

  /// Section Widget
  Widget _buildUser(BuildContext context) {
    return CustomTextFormField(
        controller: userController,
        hintText: "lbl_zics_smith".tr,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(9.h, 14.v, 28.h, 14.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgUser, height: 24.v, width: 27.h)),
        prefixConstraints: BoxConstraints(maxHeight: 52.v));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "lbl_email_gmail_com".tr,
        textInputType: TextInputType.emailAddress,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(9.h, 14.v, 28.h, 14.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgEmailIcon,
                height: 24.v,
                width: 27.h)),
        prefixConstraints: BoxConstraints(maxHeight: 52.v));
  }

  /// Section Widget
  Widget _buildPhonenumber(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 22.h, top: 11.v, bottom: 8.v),
        child: CustomTextFormField(
            width: 177.h,
            controller: phonenumberController,
            hintText: "msg_e_g_706_611_2401".tr));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
        controller: passwordController,
        hintText: "lbl_type_password".tr,
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(7.h, 13.v, 24.h, 15.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgPasswordIcon,
                height: 24.v,
                width: 23.h)),
        prefixConstraints: BoxConstraints(maxHeight: 52.v),
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 14.v, 14.h, 14.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgShowPassword,
                height: 24.v,
                width: 23.h)),
        suffixConstraints: BoxConstraints(maxHeight: 52.v),
        obscureText: true,
        contentPadding: EdgeInsets.symmetric(vertical: 15.v));
  }

  /// Section Widget
  Widget _buildPassword1(BuildContext context) {
    return CustomTextFormField(
        controller: passwordController1,
        hintText: "msg_re_type_password".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(7.h, 14.v, 25.h, 14.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgPasswordIcon,
                height: 24.v,
                width: 23.h)),
        prefixConstraints: BoxConstraints(maxHeight: 52.v),
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 13.v, 14.h, 15.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgShowPassword,
                height: 24.v,
                width: 23.h)),
        suffixConstraints: BoxConstraints(maxHeight: 52.v),
        obscureText: true,
        contentPadding: EdgeInsets.symmetric(vertical: 15.v));
  }

  /// Section Widget
  Widget _buildCreateAccount(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_create_account".tr,
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientBlueToOnErrorDecoration,
        onPressed: () {
          onTapCreateAccount(context);
        });
  }

  /// Navigates to the onboardingScreen when the action is triggered.
  onTapVector(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.onboardingScreen);
  }

  /// Navigates to the verificationScreen when the action is triggered.
  onTapCreateAccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.verificationScreen);
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapTxtAlreadyhavean(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }
}
