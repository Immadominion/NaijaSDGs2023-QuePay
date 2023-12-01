import 'package:flutter/material.dart';
import 'package:que_pay/core/app_export.dart';

// ignore: must_be_immutable
class SendmoneyItemWidget extends StatelessWidget {
  const SendmoneyItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLogo,
            height: 40.adaptSize,
            width: 40.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_09156924430".tr,
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  "msg_whatsapp_234".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
