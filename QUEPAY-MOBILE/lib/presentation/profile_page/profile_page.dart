import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:que_pay/core/app_export.dart';
import 'package:que_pay/widgets/app_bar/appbar_circleimage.dart';
import 'package:que_pay/widgets/app_bar/appbar_subtitle.dart';
import 'package:que_pay/widgets/app_bar/appbar_trailing_image.dart';
import 'package:que_pay/widgets/app_bar/custom_app_bar.dart';
import 'package:que_pay/widgets/custom_outlined_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillGray100,
                child: Column(children: [
                  _buildThirtyTwo(context),
                  SizedBox(height: 36.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 5.v),
                              child: Column(children: [
                                _buildTotalBalancePlaceholder(context),
                                SizedBox(height: 35.v),
                                _buildInformations(context),
                                SizedBox(height: 25.v),
                                Text("lbl_logout".tr,
                                    style: theme.textTheme.titleLarge)
                              ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildThirtyTwo(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 17.v),
        decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.roundedBorder10,
            image: DecorationImage(
                image: AssetImage(ImageConstant.imgGroup32),
                fit: BoxFit.cover)),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 19.v),
              CustomAppBar(
                  height: 65.v,
                  leadingWidth: 89.h,
                  leading: Container(
                      margin: EdgeInsets.only(left: 24.h),
                      decoration: AppDecoration.fillBlueGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder32),
                      child: AppbarCircleimage(
                          imagePath: ImageConstant.imgEllipse)),
                  title: AppbarSubtitle(
                      text: "lbl_hi_zics".tr,
                      margin: EdgeInsets.only(left: 8.h)),
                  actions: [
                    AppbarTrailingImage(
                        imagePath: ImageConstant.imgRiSettingsLine,
                        margin: EdgeInsets.symmetric(
                            horizontal: 24.h, vertical: 15.v),
                        onTap: () {
                          onTapRiSettingsLine(context);
                        })
                  ])
            ]));
  }

  /// Section Widget
  Widget _buildTotalBalancePlaceholder(BuildContext context) {
    return Container(
        width: 382.h,
        margin: EdgeInsets.symmetric(horizontal: 24.h),
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 8.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Align(
              alignment: Alignment.centerRight,
              child: Text("msg_quepay_account_no".tr,
                  style: CustomTextStyles.titleMediumBluegray90016)),
          SizedBox(height: 1.v),
          Align(
              alignment: Alignment.centerRight,
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text("lbl_3306563025".tr,
                    style: CustomTextStyles.titleMediumBluegray900),
                CustomImageView(
                    imagePath: ImageConstant.imgClarityCopyLine,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    margin: EdgeInsets.only(left: 21.h, bottom: 2.v))
              ])),
          SizedBox(height: 12.v),
          SizedBox(
              height: 70.v,
              width: 126.h,
              child: Stack(alignment: Alignment.topLeft, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgClarityeyehideline,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.topRight),
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Text("lbl_total_balance".tr,
                            style: CustomTextStyles.titleMediumBluegray90016))),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Text("lbl2".tr,
                        style: CustomTextStyles.displayMedium50))
              ])),
          SizedBox(height: 12.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 23.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                OutlineGradientButton(
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
                        width: 140.h,
                        text: "lbl_withdraw".tr,
                        buttonStyle: CustomButtonStyles.outlineTL10,
                        buttonTextStyle: CustomTextStyles.titleLargeBlue800)),
                Padding(
                    padding: EdgeInsets.only(left: 17.h),
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
                        child: CustomOutlinedButton(
                            width: 140.h,
                            text: "lbl_fund2".tr,
                            buttonStyle: CustomButtonStyles.none,
                            decoration: CustomButtonStyles
                                .gradientBlueToPrimaryTL101Decoration,
                            buttonTextStyle: CustomTextStyles
                                .titleLargeOnErrorContainerMedium)))
              ])),
          SizedBox(height: 10.v)
        ]));
  }

  /// Section Widget
  Widget _buildInformations(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 38.h, vertical: 21.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomImageView(
                imagePath: ImageConstant.imgCardIcon,
                height: 24.adaptSize,
                width: 24.adaptSize),
            Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Text("msg_bank_card_accounts".tr,
                    style: theme.textTheme.titleLarge)),
            Spacer(),
            CustomImageView(
                imagePath: ImageConstant.imgVectorGray40013x8,
                height: 13.v,
                width: 8.h,
                margin: EdgeInsets.only(top: 7.v, bottom: 3.v))
          ]),
          SizedBox(height: 21.v),
          Divider(),
          SizedBox(height: 22.v),
          _buildCustomerService(context,
              customerService: ImageConstant.imgSpamIcon,
              customerService1: "lbl_report_spam".tr),
          SizedBox(height: 20.v),
          Divider(),
          SizedBox(height: 22.v),
          _buildCustomerService(context,
              customerService: ImageConstant.imgCustomerService,
              customerService1: "msg_customer_service".tr),
          SizedBox(height: 22.v),
          Divider(),
          SizedBox(height: 21.v),
          _buildCustomerService(context,
              customerService: ImageConstant.imgVerifiedIcon,
              customerService1: "lbl_security_center".tr),
          SizedBox(height: 20.v),
          Divider(),
          SizedBox(height: 21.v),
          _buildCustomerService(context,
              customerService: ImageConstant.imgMdiAboutCircleOutline,
              customerService1: "lbl_report_spam".tr),
          SizedBox(height: 22.v),
          Divider(),
          SizedBox(height: 21.v),
          Padding(
              padding: EdgeInsets.only(left: 4.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgVectorBlack9000118x30,
                    height: 18.v,
                    width: 30.h,
                    margin: EdgeInsets.only(top: 2.v, bottom: 3.v)),
                Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Text("lbl_refer_and_earn".tr,
                        style: theme.textTheme.titleLarge)),
                Spacer(),
                CustomImageView(
                    imagePath: ImageConstant.imgVectorGray40013x8,
                    height: 13.v,
                    width: 8.h,
                    margin: EdgeInsets.symmetric(vertical: 5.v))
              ])),
          SizedBox(height: 21.v)
        ]));
  }

  /// Common widget
  Widget _buildCustomerService(
    BuildContext context, {
    required String customerService,
    required String customerService1,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: customerService,
          height: 24.adaptSize,
          width: 24.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 10.h),
          child: Text(customerService1,
              style: theme.textTheme.titleLarge!
                  .copyWith(color: appTheme.black90001))),
      Spacer(),
      CustomImageView(
          imagePath: ImageConstant.imgVectorGray40013x8,
          height: 13.v,
          width: 8.h,
          margin: EdgeInsets.only(top: 6.v, bottom: 5.v))
    ]);
  }

  /// Navigates to the accountSettingsScreen when the action is triggered.
  onTapRiSettingsLine(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.accountSettingsScreen);
  }
}
