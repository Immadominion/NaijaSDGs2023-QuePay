import '../transactions_page/widgets/transactions_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:que_pay/core/app_export.dart';
import 'package:que_pay/widgets/app_bar/appbar_leading_image.dart';
import 'package:que_pay/widgets/app_bar/appbar_title.dart';
import 'package:que_pay/widgets/app_bar/custom_app_bar.dart';

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 27.v),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 33.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("lbl_all".tr,
                                style: CustomTextStyles.titleMediumGray400),
                            CustomImageView(
                                imagePath: ImageConstant.imgVectorGray400,
                                height: 8.v,
                                width: 13.h,
                                margin: EdgeInsets.only(
                                    left: 5.h, top: 6.v, bottom: 4.v)),
                            Spacer(flex: 50),
                            Text("lbl_all_status".tr,
                                style: CustomTextStyles.titleMediumGray400),
                            CustomImageView(
                                imagePath: ImageConstant.imgVectorGray400,
                                height: 8.v,
                                width: 13.h,
                                margin: EdgeInsets.only(
                                    left: 5.h, top: 6.v, bottom: 4.v)),
                            Spacer(flex: 49),
                            Text("lbl_filter".tr,
                                style: CustomTextStyles.titleMediumGray400),
                            CustomImageView(
                                imagePath: ImageConstant.imgVectorGray40012x12,
                                height: 12.adaptSize,
                                width: 12.adaptSize,
                                margin: EdgeInsets.only(
                                    left: 5.h, top: 4.v, bottom: 3.v))
                          ])),
                  SizedBox(height: 21.v),
                  Divider(
                      color: appTheme.black90001.withOpacity(0.2),
                      indent: 8.h,
                      endIndent: 8.h),
                  SizedBox(height: 57.v),
                  _buildTransactions(context),
                  SizedBox(height: 40.v),
                  _buildSlackTwo(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 58.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVector20x32,
            margin: EdgeInsets.only(left: 26.h, top: 14.v, bottom: 21.v),
            onTap: () {
              onTapVector(context);
            }),
        title: AppbarTitle(
            text: "msg_transaction_history".tr,
            margin: EdgeInsets.only(left: 66.h)));
  }

  /// Section Widget
  Widget _buildTransactions(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0.v),
                  child: SizedBox(
                      width: 312.h,
                      child: Divider(
                          height: 1.v,
                          thickness: 1.v,
                          color: appTheme.black90001.withOpacity(0.2))));
            },
            itemCount: 5,
            itemBuilder: (context, index) {
              return TransactionsItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildSlackTwo(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgSlack2,
                  height: 60.adaptSize,
                  width: 60.adaptSize),
              Expanded(
                  child: Padding(
                      padding:
                          EdgeInsets.only(left: 10.h, top: 3.v, bottom: 6.v),
                      child: Column(children: [
                        _buildElectricity(context,
                            electricity: "lbl_zicsda_great2".tr,
                            electricity1: "lbl_200".tr),
                        SizedBox(height: 3.v),
                        _buildElectricity(context,
                            electricity: "lbl_10_nov_2023".tr,
                            electricity1: "lbl_sent".tr)
                      ])))
            ]));
  }

  /// Common widget
  Widget _buildElectricity(
    BuildContext context, {
    required String electricity,
    required String electricity1,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(electricity,
              style: CustomTextStyles.titleMediumBlack9000116
                  .copyWith(color: appTheme.black90001.withOpacity(0.65)))),
      Text(electricity1,
          style: CustomTextStyles.titleMediumRed700
              .copyWith(color: appTheme.red700))
    ]);
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapVector(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }
}
