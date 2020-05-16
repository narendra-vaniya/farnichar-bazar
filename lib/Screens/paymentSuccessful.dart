import 'package:flutter/material.dart';
import 'package:furnicharbazar/Theme/AppColor.dart';
import 'package:furnicharbazar/Theme/AppTheme.dart';
import 'package:furnicharbazar/Utilities/AppImages.dart';
import 'package:furnicharbazar/Utilities/AppWidgetSize.dart';

class PaymentSuccessful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColor.fontColor),
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Image.asset(
            AppImage.getIcon(iconName: 'payment-done.gif'),
          ),
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppWidgetSize.getResponsiveWidth(
                      MediaQuery.of(context).size, 0.06),
                ),
                child: Text(
                  "Thank you!",
                  style: AppTheme.xxlargeTextStyle(
                    appSize: MediaQuery.of(context).size,
                    color: AppColor.fontColor,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppWidgetSize.getResponsiveWidth(
                      MediaQuery.of(context).size, 0.06),
                ),
                child: Text(
                  "Your order #LMP33672 is completed.",
                  style: AppTheme.mediamTextStyle(
                    appSize: MediaQuery.of(context).size,
                    color: AppColor.fontColor,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppWidgetSize.getResponsiveWidth(
                  MediaQuery.of(context).size, 0.06),
            ),
            child: RaisedButton(
              elevation: 0,
              padding: EdgeInsets.all(10),
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/Home', (Route r) => false);
              },
              child: Text(
                "Continue Shopping",
                style: AppTheme.mediamTextStyle(
                    appSize: MediaQuery.of(context).size, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
