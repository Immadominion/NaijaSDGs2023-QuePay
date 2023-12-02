import 'package:flutter/material.dart';
import 'package:que_pay/core/app_export.dart';

// ignore: must_be_immutable
class TransactionsItemWidget extends StatelessWidget {
  const TransactionsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 3.h,
        vertical: 8.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSlack2,
            height: 60.adaptSize,
            width: 60.adaptSize,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                top: 3.v,
                bottom: 6.v,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lbl_zicsda_great2".tr,
                        style: CustomTextStyles.titleLargeOnPrimaryBold,
                      ),
                      Text(
                        "lbl_200".tr,
                        style: CustomTextStyles.titleLargeOnPrimaryBold,
                      ),
                    ],
                  ),
                  SizedBox(height: 3.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Text(
                          "lbl_10_nov_2023".tr,
                          style: CustomTextStyles.titleMediumBlack9000116,
                        ),
                      ),
                      Text(
                        "lbl_sent".tr,
                        style: CustomTextStyles.titleMediumRed700,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
