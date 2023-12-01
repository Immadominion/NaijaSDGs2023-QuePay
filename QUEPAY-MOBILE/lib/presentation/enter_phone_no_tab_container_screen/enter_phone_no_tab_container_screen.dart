import 'package:flutter/material.dart';
import 'package:que_pay/core/app_export.dart';
import 'package:que_pay/presentation/send_money_page/send_money_page.dart';
import 'package:que_pay/widgets/app_bar/appbar_leading_image.dart';
import 'package:que_pay/widgets/app_bar/appbar_title.dart';
import 'package:que_pay/widgets/app_bar/appbar_trailing_image.dart';
import 'package:que_pay/widgets/app_bar/custom_app_bar.dart';
import 'package:que_pay/widgets/custom_elevated_button.dart';

class EnterPhoneNoTabContainerScreen extends StatefulWidget {
  const EnterPhoneNoTabContainerScreen({Key? key}) : super(key: key);

  @override
  EnterPhoneNoTabContainerScreenState createState() =>
      EnterPhoneNoTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class EnterPhoneNoTabContainerScreenState
    extends State<EnterPhoneNoTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 29.v),
                child: Column(children: [
                  SizedBox(height: 21.v),
                  _buildFour(context),
                  SizedBox(height: 45.v),
                  _buildInformations(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 58.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVector20x32,
            margin: EdgeInsets.only(left: 26.h, top: 16.v, bottom: 19.v)),
        centerTitle: true,
        title: AppbarTitle(text: "msg_transfer_to_social".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgTablerDots,
              margin: EdgeInsets.fromLTRB(24.h, 15.v, 24.h, 16.v))
        ]);
  }

  /// Section Widget
  Widget _buildFour(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 13.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 6.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Text("msg_recipient_account".tr,
                          style:
                              CustomTextStyles.headlineSmallBlack90001Bold))),
              SizedBox(height: 17.v),
              SizedBox(
                  height: 47.v,
                  width: 382.h,
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgLogo,
                        height: 34.adaptSize,
                        width: 34.adaptSize,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 13.h)),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 66.h, right: 15.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("lbl_whatsapp".tr,
                                            style: CustomTextStyles
                                                .headlineSmallBlack90001),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgVectorGray400,
                                            height: 8.v,
                                            width: 13.h,
                                            margin: EdgeInsets.only(
                                                top: 3.v, bottom: 17.v))
                                      ]))),
                          SizedBox(height: 13.v),
                          Divider(color: appTheme.black90001.withOpacity(0.2))
                        ]))
                  ])),
              SizedBox(height: 24.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 66.h),
                      child: Text("lbl_09156924430".tr,
                          style: CustomTextStyles.headlineSmallBlack90001))),
              SizedBox(height: 24.v),
              Divider(color: appTheme.black90001.withOpacity(0.2)),
              SizedBox(height: 13.v),
              CustomElevatedButton(
                  text: "lbl_next".tr,
                  margin: EdgeInsets.only(left: 29.h, right: 22.h),
                  buttonStyle: CustomButtonStyles.none,
                  decoration:
                      CustomButtonStyles.gradientBlueToPrimaryTL10Decoration,
                  onPressed: () {
                    onTapNext(context);
                  })
            ]));
  }

  /// Section Widget
  Widget _buildInformations(BuildContext context) {
    return Container(
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(
              height: 53.v,
              width: 382.h,
              child: TabBar(
                  controller: tabviewController,
                  labelPadding: EdgeInsets.zero,
                  labelColor: appTheme.indigoA70001,
                  labelStyle: TextStyle(
                      fontSize: 24.fSize,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w600),
                  unselectedLabelColor: appTheme.gray400,
                  unselectedLabelStyle: TextStyle(
                      fontSize: 24.fSize,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w600),
                  indicatorColor: appTheme.blue800,
                  tabs: [
                    Tab(child: Text("lbl_recents".tr)),
                    Tab(child: Text("lbl_favourites".tr))
                  ])),
          SizedBox(
              height: 378.v,
              child: TabBarView(
                  controller: tabviewController,
                  children: [SendMoneyPage(), SendMoneyPage()]))
        ]));
  }

  /// Navigates to the enterAmountScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.enterAmountScreen);
  }
}
