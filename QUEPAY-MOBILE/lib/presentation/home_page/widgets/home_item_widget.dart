import 'package:flutter/material.dart';
import 'package:que_pay/core/app_export.dart';
import 'package:que_pay/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  const HomeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 51.h,
      child: Column(
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
              padding: EdgeInsets.all(9.h),
              alignment: Alignment.center,
              child: CustomImageView(
                imagePath: ImageConstant.imgReceiveIcon,
              ),
            ),
          ),
          SizedBox(height: 7.v),
          Text(
            "lbl_receive".tr,
            style: CustomTextStyles.labelLargeBlack90001Medium,
          ),
        ],
      ),
    );
  }
}
