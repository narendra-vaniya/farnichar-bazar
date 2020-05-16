import 'package:flutter/material.dart';
import 'package:furnicharbazar/Theme/AppColor.dart';
import 'package:furnicharbazar/Utilities/AppImages.dart';
import 'package:furnicharbazar/Theme/AppTheme.dart';
import 'package:furnicharbazar/Utilities/AppWidgetSize.dart';

class LoginType extends StatefulWidget {
  @override
  _LoginTypeState createState() => _LoginTypeState();
}

class _LoginTypeState extends State<LoginType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              AppImage.getImage(
                imageName: 'dashboard.jpg',
              ),
            ),
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FlutterLogo(
                size: 200,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  RaisedButton(
                    padding: EdgeInsets.all(10),
                    elevation: 0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/SingUp');
                    },
                    child: Text(
                      "Sign up",
                      style: AppTheme.smallTextStyle(
                          appSize: MediaQuery.of(context).size,
                          color: AppColor.fontColor),
                    ),
                  ),
                  SizedBox(
                    height: AppWidgetSize.getResponsiveHeight(
                        MediaQuery.of(context).size, 0.005),
                  ),
                  RaisedButton(
                    elevation: 0,
                    padding: EdgeInsets.all(10),
                    color: AppColor.fontColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/Login');
                    },
                    child: Text(
                      "Login",
                      style: AppTheme.smallTextStyle(
                          appSize: MediaQuery.of(context).size,
                          color: Colors.white),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
