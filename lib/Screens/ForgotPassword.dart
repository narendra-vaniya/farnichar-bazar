import 'package:flutter/material.dart';
import 'package:furnicharbazar/Theme/AppColor.dart';
import 'package:furnicharbazar/Theme/AppTheme.dart';
import 'package:furnicharbazar/Utilities/AppWidgetSize.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.close,
              color: AppColor.fontColor,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  bottom: AppWidgetSize.getResponsiveHeight(
                      MediaQuery.of(context).size, 0.03),
                ),
                child: Text(
                  "Forgot Password",
                  style: AppTheme.largeTextStyle(
                      appSize: MediaQuery.of(context).size,
                      fontWeight: FontWeight.bold,
                      color: AppColor.fontColor),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  bottom: AppWidgetSize.getResponsiveHeight(
                      MediaQuery.of(context).size, 0.08),
                ),
                child: Text(
                  "Please enter your email address. You will receive a link to create new password via email.",
                  style: AppTheme.mediamTextStyle(
                      appSize: MediaQuery.of(context).size,
                      color: AppColor.fontColor),
                ),
              ),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                        bottom: AppWidgetSize.getResponsiveHeight(
                            MediaQuery.of(context).size, 0.045),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: AppTheme.smallTextStyle(
                            appSize: MediaQuery.of(context).size,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        bottom: AppWidgetSize.getResponsiveHeight(
                            MediaQuery.of(context).size, 0.02),
                      ),
                      child: RaisedButton(
                        elevation: 0,
                        padding: EdgeInsets.all(10),
                        color: AppColor.fontColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0)),
                        onPressed: () {},
                        child: Text(
                          "SEND",
                          style: AppTheme.smallTextStyle(
                              appSize: MediaQuery.of(context).size,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
