import 'package:flutter/material.dart';
import 'package:que_pay/core/app_export.dart';
import 'package:que_pay/widgets/custom_elevated_button.dart';
import 'package:que_pay/widgets/custom_pin_code_text_field.dart';

class EnterTransactionPinScreen extends StatelessWidget {
  const EnterTransactionPinScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
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
                                  margin:
                                      EdgeInsets.only(top: 3.v, bottom: 121.v)),
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
                                            child: Text("lbl_zics_da_great2".tr,
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
                                style: CustomTextStyles.titleLargeBlack90001))),
                    SizedBox(height: 47.v),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 24.h, vertical: 10.v),
                        decoration: AppDecoration.fillOnErrorContainer.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL20),
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 104.h),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(top: 2.v),
                                            child: Text(
                                                "msg_input_pin_to_pay".tr,
                                                style: CustomTextStyles
                                                    .headlineSmallBlack90001)),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgIconoirCancel,
                                            height: 32.adaptSize,
                                            width: 32.adaptSize,
                                            margin: EdgeInsets.only(left: 71.h),
                                            onTap: () {
                                              onTapImgIconoirCancel(context);
                                            })
                                      ]))),
                          SizedBox(height: 18.v),
                          Text("lbl_1_500_002".tr,
                              style: CustomTextStyles.headlineSmallBlack90001),
                          SizedBox(height: 20.v),
                          Padding(
                              padding: EdgeInsets.only(left: 88.h, right: 32.h),
                              child: CustomPinCodeTextField(
                                  context: context, onChanged: (value) {})),
                          SizedBox(height: 14.v),
                          Text("lbl_forgot_pin".tr,
                              style: CustomTextStyles.bodyLargeBlue800),
                          SizedBox(height: 28.v),
                          CustomElevatedButton(
                              text: "lbl_confirm".tr,
                              margin: EdgeInsets.only(left: 30.h, right: 21.h),
                              buttonStyle: CustomButtonStyles.none,
                              decoration: CustomButtonStyles
                                  .gradientBlueToOnErrorDecoration,
                              onPressed: () {
                                onTapConfirm(context);
                              }),
                          SizedBox(height: 28.v)
                        ]))
                  ])),
        ));
  }

  /// Navigates to the confirmationScreen when the action is triggered.
  onTapImgIconoirCancel(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.confirmationScreen);
  }

  /// Navigates to the enterAmountOneScreen when the action is triggered.
  onTapConfirm(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.enterAmountOneScreen);
  }
}
