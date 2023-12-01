import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:que_pay/core/app_export.dart';
import 'package:que_pay/widgets/custom_elevated_button.dart';

class EnterAmountScreen extends StatelessWidget {
  const EnterAmountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 32.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(right: 98.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgVector20x32,
                                    height: 20.v,
                                    width: 32.h,
                                    margin: EdgeInsets.only(
                                        top: 3.v, bottom: 121.v),
                                    onTap: () {
                                      onTapImgVector(context);
                                    }),
                                Container(
                                    height: 145.v,
                                    width: 184.h,
                                    margin: EdgeInsets.only(left: 65.h),
                                    child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Text(
                                                  "msg_transfer_to_social".tr,
                                                  style: CustomTextStyles
                                                      .headlineSmallIndigoA70001)),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Text(
                                                  "lbl_zics_da_great2".tr,
                                                  style: CustomTextStyles
                                                      .headlineSmallBlack90001Bold)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgWhatsapp,
                                              height: 90.adaptSize,
                                              width: 90.adaptSize,
                                              alignment: Alignment.center)
                                        ]))
                              ])),
                      SizedBox(height: 3.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(right: 61.h),
                              child: Text("msg_whatsapp_09156924430".tr,
                                  style:
                                      CustomTextStyles.titleLargeBlack90001))),
                      SizedBox(height: 11.v),
                      Text("lbl_amount".tr,
                          style: CustomTextStyles.bodyLargeBlack90001),
                      SizedBox(height: 2.v),
                      Container(
                          width: 382.h,
                          decoration: AppDecoration.outline.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: OutlineGradientButton(
                              padding: EdgeInsets.only(
                                  left: 1.h, top: 1.v, right: 1.h, bottom: 1.v),
                              strokeWidth: 1.h,
                              gradient: LinearGradient(
                                  begin: Alignment(0, 0.49),
                                  end: Alignment(1, 0.49),
                                  colors: [
                                    appTheme.blue800,
                                    theme.colorScheme.primary
                                  ]),
                              corners: Corners(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30.h, vertical: 19.v),
                                  child: Text("msg_5_00_20_000_00".tr,
                                      style: CustomTextStyles
                                          .titleMediumBlack90001_1)))),
                      SizedBox(height: 26.v),
                      Text("lbl_remark".tr,
                          style: CustomTextStyles.bodyLargeBlack90001),
                      SizedBox(height: 2.v),
                      _buildTwentyFive(context),
                      SizedBox(height: 51.v),
                      CustomElevatedButton(
                          text: "lbl_confirm".tr,
                          margin: EdgeInsets.only(left: 30.h, right: 21.h),
                          buttonStyle: CustomButtonStyles.none,
                          decoration: CustomButtonStyles
                              .gradientBlueToOnErrorDecoration,
                          onPressed: () {
                            onTapConfirm(context);
                          },
                          alignment: Alignment.center),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildTwentyFive(BuildContext context) {
    return Container(
        width: 382.h,
        padding: EdgeInsets.symmetric(horizontal: 44.h, vertical: 19.v),
        decoration: AppDecoration.fillGray10002
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Text("msg_what_s_this_for_optional".tr,
                  style: CustomTextStyles.titleMediumBlack90001_1)
            ]));
  }

  /// Navigates to the enterPhoneNoTabContainerScreen when the action is triggered.
  onTapImgVector(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.enterPhoneNoTabContainerScreen);
  }

  /// Navigates to the confirmationScreen when the action is triggered.
  onTapConfirm(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.confirmationScreen);
  }
}
