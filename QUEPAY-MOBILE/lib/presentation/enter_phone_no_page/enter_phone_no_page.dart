import '../enter_phone_no_page/widgets/enterphoneno_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:que_pay/core/app_export.dart';

// ignore_for_file: must_be_immutable
class EnterPhoneNoPage extends StatefulWidget {
  const EnterPhoneNoPage({Key? key})
      : super(
          key: key,
        );

  @override
  EnterPhoneNoPageState createState() => EnterPhoneNoPageState();
}

class EnterPhoneNoPageState extends State<EnterPhoneNoPage>
    with AutomaticKeepAliveClientMixin<EnterPhoneNoPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillBlue5001,
          child: Column(
            children: [
              SizedBox(height: 16.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 11.h,
                    right: 175.h,
                  ),
                  child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 18.0.v),
                        child: SizedBox(
                          width: 351.h,
                          child: Divider(
                            height: 1.v,
                            thickness: 1.v,
                            color: appTheme.black90001.withOpacity(0.1),
                          ),
                        ),
                      );
                    },
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return EnterphonenoItemWidget();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
