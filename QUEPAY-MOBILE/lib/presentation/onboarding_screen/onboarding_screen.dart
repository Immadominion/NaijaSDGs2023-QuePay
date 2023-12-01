import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:que_pay/core/app_export.dart';
import 'package:que_pay/widgets/custom_elevated_button.dart';
import 'package:que_pay/widgets/custom_outlined_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildTwentyTwo(context),
                  SizedBox(height: 85.v),
                  Text("lbl_welcome".tr, style: theme.textTheme.displayMedium),
                  SizedBox(height: 86.v),
                  CustomElevatedButton(
                      height: 60.v,
                      text: "lbl_create_account".tr,
                      margin: EdgeInsets.symmetric(horizontal: 24.h),
                      buttonStyle: CustomButtonStyles.none,
                      decoration:
                          CustomButtonStyles.gradientBlueToPrimaryDecoration,
                      buttonTextStyle: CustomTextStyles.headlineSmallWhiteA700,
                      onPressed: () {
                        onTapCreateAccount(context);
                      }),
                  SizedBox(height: 28.v),
                  CustomOutlinedButton(
                      height: 60.v,
                      text: "lbl_sign_in".tr,
                      margin: EdgeInsets.symmetric(horizontal: 24.h),
                      onPressed: () {
                        onTapSignIn(context);
                      }),
                  SizedBox(height: 73.v),
                  _buildTwo(context)
                ]))));
  }

  /// Section Widget
  Widget _buildTwentyTwo(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: fs.Svg(ImageConstant.imgGroup22), fit: BoxFit.cover)),
        child: Column(children: [
          SizedBox(height: 79.v),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 178.h, vertical: 55.v),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: fs.Svg(ImageConstant.imgSplashScreen),
                      fit: BoxFit.cover)),
              child: Column(children: [
                SizedBox(height: 64.v),
                CustomImageView(
                    imagePath: ImageConstant.imgQuepay,
                    height: 65.v,
                    width: 73.h)
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildTwo(BuildContext context) {
    return Container(
        height: 173.v,
        width: double.maxFinite,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: fs.Svg(ImageConstant.imgGroup2), fit: BoxFit.cover)),
        child: Stack(alignment: Alignment.topLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgClipPathGroup,
              height: 8.v,
              width: 149.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 42.v)),
          CustomImageView(
              imagePath: ImageConstant.imgClipPathGroupBlack90001,
              height: 16.v,
              width: 185.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 42.v)),
          CustomImageView(
              imagePath: ImageConstant.imgClipPathGroupBlack9000136x227,
              height: 36.v,
              width: 227.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 42.v)),
          CustomImageView(
              imagePath: ImageConstant.imgClipPathGroupBlack9000144x246,
              height: 44.v,
              width: 246.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 42.v)),
          CustomImageView(
              imagePath: ImageConstant.imgClipPathGroupBlack90001108x316,
              height: 108.v,
              width: 316.h,
              alignment: Alignment.bottomLeft),
          CustomImageView(
              imagePath: ImageConstant.imgClipPathGroupBlack9000113x115,
              height: 13.v,
              width: 115.h,
              alignment: Alignment.bottomLeft),
          Align(
              alignment: Alignment.bottomLeft,
              child: SizedBox(width: 81.h, child: Divider(indent: 22.h))),
          CustomImageView(
              imagePath: ImageConstant.imgVector5x22,
              height: 5.v,
              width: 22.h,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(left: 5.h, bottom: 9.v)),
          CustomImageView(
              imagePath: ImageConstant.imgVector17x262,
              height: 17.v,
              width: 262.h,
              alignment: Alignment.bottomRight),
          CustomImageView(
              imagePath: ImageConstant.imgVector121x196,
              height: 121.v,
              width: 196.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(bottom: 8.v)),
          CustomImageView(
              imagePath: ImageConstant.imgVector103x177,
              height: 103.v,
              width: 177.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(bottom: 26.v)),
          CustomImageView(
              imagePath: ImageConstant.imgVector98x156,
              height: 98.v,
              width: 156.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(bottom: 32.v)),
          CustomImageView(
              imagePath: ImageConstant.imgVector48x116,
              height: 48.v,
              width: 116.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 42.v)),
          CustomImageView(
              imagePath: ImageConstant.imgVector19x101,
              height: 19.v,
              width: 101.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 42.v)),
          CustomImageView(
              imagePath: ImageConstant.imgVector18x14,
              height: 18.v,
              width: 14.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 67.v)),
          CustomImageView(
              imagePath: ImageConstant.imgVector18x14,
              height: 13.v,
              width: 86.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 42.v)),
          CustomImageView(
              imagePath: ImageConstant.imgVector18x14,
              height: 8.v,
              width: 69.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 42.v)),
          CustomImageView(
              imagePath: ImageConstant.imgVector1x11,
              height: 1.v,
              width: 11.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 42.v, right: 35.h)),
          CustomImageView(
              imagePath: ImageConstant.imgVector31x81,
              height: 31.v,
              width: 81.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(bottom: 55.v)),
          CustomImageView(
              imagePath: ImageConstant.imgVector15x54,
              height: 15.v,
              width: 54.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(right: 6.h, bottom: 62.v)),
          CustomImageView(
              imagePath: ImageConstant.imgVector11x46,
              height: 11.v,
              width: 46.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 68.v, right: 48.h)),
          CustomImageView(
              imagePath: ImageConstant.imgVector24x55,
              height: 24.v,
              width: 55.h,
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(right: 102.h)),
          CustomImageView(
              imagePath: ImageConstant.imgVector7x19,
              height: 7.v,
              width: 19.h,
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(right: 120.h)),
          CustomImageView(
              imagePath: ImageConstant.imgVector5x22,
              height: 9.v,
              width: 31.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(right: 51.h, bottom: 14.v)),
          CustomImageView(
              imagePath: ImageConstant.imgVector7x19,
              height: 9.v,
              width: 44.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(right: 155.h, bottom: 32.v)),
          CustomImageView(
              imagePath: ImageConstant.imgVector2x16,
              height: 2.v,
              width: 16.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(right: 192.h, bottom: 24.v)),
          CustomImageView(
              imagePath: ImageConstant.imgClipPathGroupBlack9000153x242,
              height: 53.v,
              width: 242.h,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(bottom: 51.v)),
          CustomImageView(
              imagePath: ImageConstant.imgVector28x152,
              height: 28.v,
              width: 152.h,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 21.h)),
          CustomImageView(
              imagePath: ImageConstant.imgVector20x65,
              height: 20.v,
              width: 65.h,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 41.h)),
          CustomImageView(
              imagePath: ImageConstant.imgVector2x16,
              height: 5.v,
              width: 19.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 72.h, top: 80.v)),
          CustomImageView(
              imagePath: ImageConstant.imgClipPathGroupBlack9000161x297,
              height: 61.v,
              width: 297.h,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(bottom: 14.v)),
          CustomImageView(
              imagePath: ImageConstant.imgClipPathGroupBlack9000147x269,
              height: 47.v,
              width: 269.h,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(bottom: 17.v)),
          CustomImageView(
              imagePath: ImageConstant.imgClipPathGroupBlack9000114x58,
              height: 14.v,
              width: 58.h,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(bottom: 44.v)),
          CustomImageView(
              imagePath: ImageConstant.imgClipPathGroup,
              height: 7.v,
              width: 20.h,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(bottom: 40.v)),
          CustomImageView(
              imagePath: ImageConstant.imgVector18x106,
              height: 18.v,
              width: 106.h,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(left: 77.h, bottom: 35.v)),
          CustomImageView(
              imagePath: ImageConstant.imgVector9x18,
              height: 9.v,
              width: 18.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(bottom: 2.v))
        ]));
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapCreateAccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapSignIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }
}
