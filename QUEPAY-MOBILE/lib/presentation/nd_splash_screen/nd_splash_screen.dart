import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:que_pay/core/app_export.dart';

class NdSplashScreen extends StatelessWidget {
  const NdSplashScreen({Key? key})
      : super(
          key: key,
        );

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
              image: fs.Svg(
                ImageConstant.imgSplashScreen,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 21.h,
              vertical: 39.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildRowTwo(context),
                SizedBox(height: 69.v),
                _buildStackQuepay(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowTwo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 3.h,
        right: 2.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 83.h,
            child: Divider(
              color: theme.colorScheme.onErrorContainer.withOpacity(1),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: SizedBox(
              width: 84.h,
              child: Divider(
                color: theme.colorScheme.onErrorContainer.withOpacity(0.5),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: SizedBox(
              width: 84.h,
              child: Divider(
                color: theme.colorScheme.onErrorContainer.withOpacity(0.5),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: SizedBox(
              width: 84.h,
              child: Divider(
                color: theme.colorScheme.onErrorContainer.withOpacity(0.5),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStackQuepay(BuildContext context) {
    return SizedBox(
      height: 409.v,
      width: 354.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgQuepay,
                  height: 93.v,
                  width: 100.h,
                ),
                SizedBox(height: 97.v),
                SizedBox(
                  width: 354.h,
                  child: Text(
                    "msg_change_the_way_you".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.latoOnErrorContainer,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5.v),
                    child: Text(
                      "lbl_money".tr,
                      style: CustomTextStyles.latoOnErrorContainer,
                    ),
                  ),
                  SizedBox(
                    height: 70.v,
                    child: VerticalDivider(
                      width: 4.h,
                      thickness: 4.v,
                      color: theme.colorScheme.onErrorContainer.withOpacity(1),
                    ),
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
