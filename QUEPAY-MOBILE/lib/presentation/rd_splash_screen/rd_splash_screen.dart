import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:que_pay/core/app_export.dart';

class RdSplashScreen extends StatelessWidget {
  const RdSplashScreen({Key? key})
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
              horizontal: 23.h,
              vertical: 39.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTwo(context),
                SizedBox(height: 73.v),
                Container(
                  height: 477.v,
                  width: 344.h,
                  margin: EdgeInsets.only(left: 6.h),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      _buildSplashScreenText(context),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Row(
                          children: [
                            Text(
                              "lbl_payments".tr,
                              style: CustomTextStyles.latoOnErrorContainer,
                            ),
                            SizedBox(
                              height: 70.v,
                              child: VerticalDivider(
                                width: 4.h,
                                thickness: 4.v,
                                color: theme.colorScheme.onErrorContainer
                                    .withOpacity(1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 83.h,
            child: Divider(
              color: theme.colorScheme.onErrorContainer.withOpacity(0.5),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: SizedBox(
              width: 84.h,
              child: Divider(
                color: theme.colorScheme.onErrorContainer.withOpacity(1),
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
  Widget _buildSplashScreenText(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgQuepay,
            height: 93.v,
            width: 100.h,
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: 111.h),
          ),
          SizedBox(height: 97.v),
          SizedBox(
            width: 344.h,
            child: Text(
              "msg_experience_the_future".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.latoOnErrorContainer,
            ),
          ),
        ],
      ),
    );
  }
}
