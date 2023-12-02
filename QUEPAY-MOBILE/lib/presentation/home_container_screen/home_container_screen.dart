import 'package:flutter/material.dart';
import 'package:que_pay/core/app_export.dart';
import 'package:que_pay/presentation/home_page/home_page.dart';
import 'package:que_pay/presentation/profile_page/profile_page.dart';
import 'package:que_pay/presentation/transactions_page/transactions_page.dart';
import 'package:que_pay/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomeContainerScreen extends StatelessWidget {
  HomeContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        body: SafeArea(
          child: Navigator(
              key: navigatorKey,
              initialRoute: AppRoutes.homePage,
              onGenerateRoute: (routeSetting) => PageRouteBuilder(
                  pageBuilder: (ctx, ani, ani1) =>
                      getCurrentPage(routeSetting.name!),
                  transitionDuration: Duration(seconds: 0))),
        ),
        bottomNavigationBar: _buildBottomBar(context));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Finance:
        return "/";
      case BottomBarEnum.Transactions:
        return AppRoutes.transactionsPage;
      case BottomBarEnum.Me:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.transactionsPage:
        return TransactionsPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
