import '../home_page/widgets/home_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:que_pay/core/app_export.dart';
import 'package:que_pay/widgets/custom_elevated_button.dart';
import 'package:que_pay/widgets/custom_icon_button.dart';
import 'package:que_pay/widgets/custom_pin_code_text_field.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillBlue5001,
          child: Column(
            children: [
              _buildFund(context),
              SizedBox(height: 30.v),
              _buildFortyThree(context),
              SizedBox(height: 30.v),
              _buildFortyTwo(context),
              SizedBox(height: 27.v),
              _buildSaveIcon(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFund(BuildContext context) {
    return Container(
      height: 317.v,
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 36.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup247,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 65.adaptSize,
              width: 65.adaptSize,
              decoration: AppDecoration.fillBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder32,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgEllipse,
                height: 65.adaptSize,
                width: 65.adaptSize,
                radius: BorderRadius.circular(
                  32.h,
                ),
                alignment: Alignment.center,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 23.v),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 73.h),
                    child: Text(
                      "lbl_hi_zics".tr,
                      style: CustomTextStyles.titleLargeOnErrorContainer,
                    ),
                  ),
                  SizedBox(height: 70.v),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12.h),
                    decoration: AppDecoration.fillOnErrorContainer.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 10.h,
                            bottom: 8.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgVerifiedIcon,
                                    height: 21.adaptSize,
                                    width: 21.adaptSize,
                                    margin: EdgeInsets.only(
                                      top: 1.v,
                                      bottom: 2.v,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 1.v,
                                      bottom: 2.v,
                                    ),
                                    child: Text(
                                      "msg_available_balance".tr,
                                      style: CustomTextStyles
                                          .titleMediumBluegray90016,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgShowPassword,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin: EdgeInsets.only(left: 4.h),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4.v),
                              Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: Text(
                                  "lbl_120_000_00".tr,
                                  style: CustomTextStyles
                                      .headlineSmallBlack90001Bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomElevatedButton(
                          height: 36.v,
                          width: 128.h,
                          text: "lbl_fund".tr,
                          margin: EdgeInsets.only(
                            left: 46.h,
                            top: 15.v,
                            bottom: 15.v,
                          ),
                          buttonStyle: CustomButtonStyles.none,
                          decoration: CustomButtonStyles
                              .gradientBlueToPrimaryTL18Decoration,
                          buttonTextStyle:
                              CustomTextStyles.titleLargeOnErrorContainerMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBellIcon,
            height: 35.adaptSize,
            width: 35.adaptSize,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(top: 15.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyThree(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "lbl_money_transfer".tr,
              style: CustomTextStyles.titleLargeMedium_1,
            ),
          ),
          SizedBox(height: 9.v),
          SizedBox(
            height: 72.v,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 39.h,
                );
              },
              itemCount: 4,
              itemBuilder: (context, index) {
                return HomeItemWidget();
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyTwo(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Text(
                "lbl_quick_services".tr,
                style: CustomTextStyles.titleLargeMedium_1,
              ),
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            child: CustomPinCodeTextField(
              context: context,
              onChanged: (value) {},
            ),
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_recharge".tr,
                  style: CustomTextStyles.labelLargeBlack90001Medium,
                ),
                Text(
                  "lbl_pay_bills".tr,
                  style: CustomTextStyles.labelLargeBlack90001Medium,
                ),
                Text(
                  "lbl_tickets".tr,
                  style: CustomTextStyles.labelLargeBlack90001Medium,
                ),
                Text(
                  "lbl_electricity".tr,
                  style: CustomTextStyles.labelLargeBlack90001Medium,
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50.v,
                  width: 51.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.gradientBlueToOnError.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: CustomIconButton(
                    height: 35.adaptSize,
                    width: 35.adaptSize,
                    padding: EdgeInsets.all(8.h),
                    alignment: Alignment.center,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSaveIcon,
                    ),
                  ),
                ),
                Container(
                  height: 50.v,
                  width: 51.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.gradientBlueToOnError.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: CustomIconButton(
                    height: 35.adaptSize,
                    width: 35.adaptSize,
                    padding: EdgeInsets.all(8.h),
                    alignment: Alignment.center,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgReceiveIconOnerrorcontainer,
                    ),
                  ),
                ),
                Container(
                  height: 50.v,
                  width: 51.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.gradientBlueToOnError.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: CustomIconButton(
                    height: 35.adaptSize,
                    width: 35.adaptSize,
                    padding: EdgeInsets.all(8.h),
                    alignment: Alignment.center,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgReceiveIconBlack90001,
                    ),
                  ),
                ),
                Container(
                  height: 50.v,
                  width: 51.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.gradientBlueToOnError.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: CustomIconButton(
                    height: 35.adaptSize,
                    width: 35.adaptSize,
                    padding: EdgeInsets.all(5.h),
                    alignment: Alignment.center,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgMoreIcon,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "lbl_save".tr,
                  style: CustomTextStyles.labelLargeBlack90001Medium,
                ),
                Spacer(
                  flex: 31,
                ),
                Text(
                  "lbl_shop".tr,
                  style: CustomTextStyles.labelLargeBlack90001Medium,
                ),
                Spacer(
                  flex: 34,
                ),
                Text(
                  "lbl_tv".tr,
                  style: CustomTextStyles.labelLargeBlack90001Medium,
                ),
                Spacer(
                  flex: 33,
                ),
                Text(
                  "lbl_more".tr,
                  style: CustomTextStyles.labelLargeBlack90001Medium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSaveIcon(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 4.v,
            ),
            child: CustomIconButton(
              height: 35.adaptSize,
              width: 35.adaptSize,
              padding: EdgeInsets.all(2.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgSaveIconOnerrorcontainer,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              top: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_invite_friends".tr,
                  style: CustomTextStyles.titleLargeSemiBold,
                ),
                SizedBox(height: 1.v),
                Text(
                  "msg_invite_new_users".tr,
                  style: CustomTextStyles.labelLargeBlack90001,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgZondiconsCheveronDown,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 9.v,
              right: 2.h,
              bottom: 9.v,
            ),
          ),
        ],
      ),
    );
  }
}
