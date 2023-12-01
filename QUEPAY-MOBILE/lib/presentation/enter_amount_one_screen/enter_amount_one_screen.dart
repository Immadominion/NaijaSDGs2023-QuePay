import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:que_pay/core/app_export.dart';
import 'package:que_pay/widgets/custom_elevated_button.dart';
import 'package:que_pay/widgets/custom_outlined_button.dart';

class EnterAmountOneScreen extends StatelessWidget {
  const EnterAmountOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        body: SafeArea(
          child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 216.v),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 107.adaptSize,
                        width: 107.adaptSize,
                        padding: EdgeInsets.symmetric(
                            horizontal: 33.h, vertical: 34.v),
                        decoration: AppDecoration.fillIndigoA.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder53),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgVectorOnerrorcontainer,
                            height: 37.v,
                            width: 40.h,
                            alignment: Alignment.topCenter)),
                    SizedBox(height: 21.v),
                    Text("msg_transfer_successful".tr,
                        style: CustomTextStyles.headlineLargeBlack90001),
                    Spacer(),
                    SizedBox(height: 44.v),
                    _buildShareReceipt(context)
                  ])),
        ));
  }

  /// Section Widget
  Widget _buildShareReceipt(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child: Padding(
              padding: EdgeInsets.only(right: 8.h),
              child: OutlineGradientButton(
                  padding: EdgeInsets.only(
                      left: 1.h, top: 1.v, right: 1.h, bottom: 1.v),
                  strokeWidth: 1.h,
                  gradient: LinearGradient(
                      begin: Alignment(0, 0.49),
                      end: Alignment(1, 0.49),
                      colors: [appTheme.blue800, theme.colorScheme.primary]),
                  corners: Corners(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  child: CustomOutlinedButton(
                      height: 52.v,
                      text: "lbl_share_receipt".tr,
                      buttonStyle: CustomButtonStyles.outline)))),
      Expanded(
          child: CustomElevatedButton(
              text: "lbl_done".tr,
              margin: EdgeInsets.only(left: 8.h),
              buttonStyle: CustomButtonStyles.none,
              decoration:
                  CustomButtonStyles.gradientBlueToPrimaryTL10Decoration,
              onPressed: () {
                onTapDone(context);
              }))
    ]);
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapDone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }
}
