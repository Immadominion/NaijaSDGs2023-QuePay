import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:que_pay/core/app_export.dart';

class ThSplash1Screen extends StatelessWidget {
  const ThSplash1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: theme.colorScheme.primaryContainer,
        body: SafeArea(
          child: Container(
              width: mediaQueryData.size.width,
              height: mediaQueryData.size.height,
              decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer,
                  image: DecorationImage(
                      image: fs.Svg(ImageConstant.imgSplashScreen),
                      fit: BoxFit.cover)),
              child: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 23.h, vertical: 39.v),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildTwoRow(context),
                        SizedBox(height: 73.v),
                        Container(
                            height: 477.v,
                            width: 313.h,
                            margin: EdgeInsets.only(left: 5.h),
                            child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgQuepay,
                                                height: 93.v,
                                                width: 100.h,
                                                alignment:
                                                    Alignment.centerRight,
                                                margin: EdgeInsets.only(
                                                    right: 80.h)),
                                            SizedBox(height: 98.v),
                                            SizedBox(
                                                width: 313.h,
                                                child: Text(
                                                    "msg_your_universal_social"
                                                        .tr,
                                                    maxLines: 3,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: CustomTextStyles
                                                        .latoOnErrorContainer))
                                          ])),
                                  Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Row(children: [
                                        Text("lbl_app".tr,
                                            style: CustomTextStyles
                                                .latoOnErrorContainer),
                                        SizedBox(
                                            height: 70.v,
                                            child: VerticalDivider(
                                                width: 4.h,
                                                thickness: 4.v,
                                                color: theme.colorScheme
                                                    .onErrorContainer
                                                    .withOpacity(1)))
                                      ]))
                                ])),
                        Spacer(),
                        SizedBox(height: 33.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                height: 42.v,
                                width: 125.h,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 18.h, vertical: 8.v),
                                decoration: AppDecoration
                                    .gradientOnErrorContainerToOnErrorContainer
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder21),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgVector,
                                    height: 24.v,
                                    width: 48.h,
                                    alignment: Alignment.centerRight,
                                    onTap: () {
                                      onTapImgVector(context);
                                    })))
                      ]))),
        ));
  }

  /// Section Widget
  Widget _buildTwoRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
              width: 83.h,
              child: Divider(
                  color: theme.colorScheme.onErrorContainer.withOpacity(0.5))),
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: SizedBox(
                  width: 84.h,
                  child: Divider(
                      color: theme.colorScheme.onErrorContainer
                          .withOpacity(0.5)))),
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: SizedBox(
                  width: 84.h,
                  child: Divider(
                      color: theme.colorScheme.onErrorContainer
                          .withOpacity(0.5)))),
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: SizedBox(
                  width: 84.h,
                  child: Divider(
                      color:
                          theme.colorScheme.onErrorContainer.withOpacity(1))))
        ]));
  }

  /// Navigates to the onboardingScreen when the action is triggered.
  onTapImgVector(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.onboardingScreen);
  }
}
