import 'package:flutter/material.dart';
import 'package:que_pay/core/app_export.dart';
import 'package:que_pay/widgets/app_bar/appbar_leading_image.dart';
import 'package:que_pay/widgets/app_bar/appbar_title.dart';
import 'package:que_pay/widgets/app_bar/custom_app_bar.dart';
import 'package:que_pay/widgets/custom_elevated_button.dart';
import 'package:que_pay/widgets/custom_pin_code_text_field.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.blue50,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 35.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("lbl_enter_code".tr,
                          style: theme.textTheme.headlineLarge),
                      SizedBox(height: 10.v),
                      Opacity(
                          opacity: 0.5,
                          child: Container(
                              width: 289.h,
                              margin: EdgeInsets.only(right: 92.h),
                              child: Text("msg_enter_the_6_digit".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles
                                      .titleLargeBlack90001Medium_1))),
                      SizedBox(height: 94.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 27.h),
                          child: CustomPinCodeTextField(
                              context: context, onChanged: (value) {})),
                      SizedBox(height: 38.v),
                      Padding(
                          padding: EdgeInsets.only(left: 30.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_didn_t_receive_code2".tr,
                                    style: CustomTextStyles
                                        .titleLargeBlack90001SemiBold_1),
                                TextSpan(
                                    text: "lbl_resend".tr,
                                    style: CustomTextStyles
                                        .titleLargeBlue800SemiBold
                                        .copyWith(
                                            decoration:
                                                TextDecoration.underline))
                              ]),
                              textAlign: TextAlign.left)),
                      SizedBox(height: 80.v),
                      CustomElevatedButton(
                          text: "lbl_verify".tr,
                          margin: EdgeInsets.only(left: 25.h, right: 26.h),
                          buttonStyle: CustomButtonStyles.none,
                          decoration: CustomButtonStyles
                              .gradientBlueToPrimaryTL10Decoration,
                          onPressed: () {
                            onTapVerify(context);
                          },
                          alignment: Alignment.center),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 58.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVectorIndigoA70001,
            margin: EdgeInsets.only(left: 26.h, top: 14.v, bottom: 21.v),
            onTap: () {
              onTapVector(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "msg_verify_phone_number".tr));
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapVector(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapVerify(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }
}
