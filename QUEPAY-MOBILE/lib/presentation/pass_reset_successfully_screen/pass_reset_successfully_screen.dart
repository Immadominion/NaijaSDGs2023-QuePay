import 'package:flutter/material.dart';
import 'package:que_pay/core/app_export.dart';
import 'package:que_pay/widgets/custom_elevated_button.dart';

class PassResetSuccessfullyScreen extends StatelessWidget {
  const PassResetSuccessfullyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        body: SafeArea(
          child: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                  child: Column(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgEllipse22,
                    height: 83.v,
                    width: 113.h,
                    alignment: Alignment.centerRight),
                SizedBox(height: 162.v),
                Text("lbl_all_done_here".tr,
                    style: theme.textTheme.headlineLarge),
                SizedBox(height: 21.v),
                Container(
                    height: 107.adaptSize,
                    width: 107.adaptSize,
                    padding:
                        EdgeInsets.symmetric(horizontal: 33.h, vertical: 34.v),
                    decoration: AppDecoration.fillIndigoA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder53),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgVectorOnerrorcontainer,
                        height: 37.v,
                        width: 40.h,
                        alignment: Alignment.topCenter)),
                SizedBox(height: 24.v),
                Opacity(
                    opacity: 0.5,
                    child: Text("msg_your_password_was".tr,
                        style: CustomTextStyles.titleLargeBlack90001Medium_1)),
                SizedBox(height: 166.v),
                CustomElevatedButton(
                    text: "lbl_finish".tr,
                    margin: EdgeInsets.only(left: 49.h, right: 50.h),
                    buttonStyle: CustomButtonStyles.none,
                    decoration:
                        CustomButtonStyles.gradientBlueToPrimaryTL10Decoration,
                    onPressed: () {
                      onTapFinish(context);
                    }),
                SizedBox(height: 182.v),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        height: 139.v,
                        width: 158.h,
                        decoration: BoxDecoration(
                            color: theme.colorScheme.errorContainer,
                            borderRadius: BorderRadius.circular(79.h),
                            boxShadow: [
                              BoxShadow(
                                  color: theme.colorScheme.errorContainer
                                      .withOpacity(0.25),
                                  spreadRadius: 2.h,
                                  blurRadius: 2.h,
                                  offset: Offset(15, 4))
                            ])))
              ]))),
        ));
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapFinish(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }
}
