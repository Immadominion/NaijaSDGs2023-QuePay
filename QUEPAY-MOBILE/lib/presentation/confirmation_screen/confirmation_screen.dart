import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:que_pay/core/app_export.dart';
import 'package:que_pay/widgets/custom_elevated_button.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                      theme.colorScheme.onPrimaryContainer,
                      appTheme.blue5001.withOpacity(0)
                    ])),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 32.v),
                          Padding(
                              padding: EdgeInsets.only(left: 26.h),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgVector20x32,
                                        height: 20.v,
                                        width: 32.h,
                                        margin: EdgeInsets.only(
                                            top: 3.v, bottom: 121.v)),
                                    Container(
                                        height: 145.v,
                                        width: 184.h,
                                        margin: EdgeInsets.only(left: 65.h),
                                        child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Text(
                                                      "msg_transfer_to_social"
                                                          .tr,
                                                      style: CustomTextStyles
                                                          .headlineSmallIndigoA70001)),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
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
                                  padding: EdgeInsets.only(right: 85.h),
                                  child: Text("msg_whatsapp_09156924430".tr,
                                      style: CustomTextStyles
                                          .titleLargeBlack90001))),
                          SizedBox(height: 11.v),
                          Padding(
                              padding: EdgeInsets.only(left: 24.h),
                              child: Text("lbl_amount".tr,
                                  style: CustomTextStyles.bodyLargeBlack90001)),
                          SizedBox(height: 2.v),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  width: 382.h,
                                  decoration: AppDecoration.outline1.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: OutlineGradientButton(
                                      padding: EdgeInsets.only(
                                          left: 1.h,
                                          top: 1.v,
                                          right: 1.h,
                                          bottom: 1.v),
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
                                              horizontal: 30.h, vertical: 20.v),
                                          child: Text("lbl_1_500_00".tr,
                                              style: theme
                                                  .textTheme.titleMedium))))),
                          SizedBox(height: 19.v),
                          Expanded(
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 24.h, vertical: 10.v),
                                  decoration: AppDecoration.fillOnErrorContainer
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderTL20),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 2.v),
                                                      child: Text(
                                                          "lbl_payment".tr,
                                                          style: CustomTextStyles
                                                              .headlineSmallBlack90001)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgIconoirCancel,
                                                      height: 32.adaptSize,
                                                      width: 32.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          left: 112.h),
                                                      onTap: () {
                                                        onTapImgIconoirCancel(
                                                            context);
                                                      })
                                                ])),
                                        SizedBox(height: 39.v),
                                        _buildUserName(context,
                                            userName: "lbl_phone_number".tr,
                                            userNickname: "lbl_09156924430".tr),
                                        SizedBox(height: 32.v),
                                        _buildUserName(context,
                                            userName: "lbl_user_name".tr,
                                            userNickname:
                                                "lbl_zics_da_great2".tr),
                                        SizedBox(height: 31.v),
                                        _buildUserName(context,
                                            userName: "lbl_amount".tr,
                                            userNickname: "lbl_1_500_002".tr),
                                        SizedBox(height: 27.v),
                                        _buildFee(context),
                                        Spacer(),
                                        SizedBox(height: 28.v),
                                        CustomElevatedButton(
                                            text: "lbl_pay_1_500_00".tr,
                                            margin: EdgeInsets.only(
                                                left: 26.h, right: 25.h),
                                            buttonStyle:
                                                CustomButtonStyles.none,
                                            decoration: CustomButtonStyles
                                                .gradientBlueToPrimaryTL10Decoration,
                                            onPressed: () {
                                              onTapPay150000(context);
                                            })
                                      ])))
                        ])))));
  }

  /// Section Widget
  Widget _buildFee(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
          padding: EdgeInsets.symmetric(vertical: 2.v),
          child: Text("lbl_fee".tr,
              style: CustomTextStyles.titleLargeBlack90001Medium)),
      CustomImageView(
          imagePath: ImageConstant.imgMdiAboutCircleOutline,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(left: 4.h, top: 3.v, bottom: 5.v)),
      Spacer(),
      Text("lbl_0_00".tr, style: CustomTextStyles.headlineSmallBlack90001)
    ]);
  }

  /// Common widget
  Widget _buildUserName(
    BuildContext context, {
    required String userName,
    required String userNickname,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(bottom: 4.v),
          child: Text(userName,
              style: CustomTextStyles.titleLargeBlack90001Medium
                  .copyWith(color: appTheme.black90001.withOpacity(0.7)))),
      Text(userNickname,
          style: CustomTextStyles.headlineSmallBlack90001
              .copyWith(color: appTheme.black90001))
    ]);
  }

  /// Navigates to the enterAmountScreen when the action is triggered.
  onTapImgIconoirCancel(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.enterAmountScreen);
  }

  /// Navigates to the enterTransactionPinScreen when the action is triggered.
  onTapPay150000(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.enterTransactionPinScreen);
  }
}
