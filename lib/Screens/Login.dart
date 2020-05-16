import 'package:flutter/material.dart';
import 'package:furnicharbazar/Theme/AppColor.dart';
import 'package:furnicharbazar/Theme/AppTheme.dart';
import 'package:furnicharbazar/Utilities/AppWidgetSize.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
        child: Column(
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                        bottom: AppWidgetSize.getResponsiveHeight(
                            MediaQuery.of(context).size, 0.08),
                      ),
                      child: Text(
                        "LOGIN",
                        style: AppTheme.largeTextStyle(
                            appSize: MediaQuery.of(context).size,
                            fontWeight: FontWeight.bold,
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
                                  MediaQuery.of(context).size, 0.025),
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
                                  MediaQuery.of(context).size, 0.04),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Password',
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
                              onPressed: () {
                                Navigator.pushNamed(context, '/Home');
                              },
                              child: Text(
                                "Login",
                                style: AppTheme.smallTextStyle(
                                    appSize: MediaQuery.of(context).size,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              bottom: AppWidgetSize.getResponsiveHeight(
                                  MediaQuery.of(context).size, 0.1),
                            ),
                            child: FlatButton(
                              padding: EdgeInsets.all(10),
                              onPressed: () {
                                Navigator.pushNamed(context, '/ForgotPassword');
                              },
                              child: Text(
                                "Forgot your password?",
                                style: AppTheme.smallTextStyle(
                                  appSize: MediaQuery.of(context).size,
                                  color: AppColor.fontColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                      bottom: AppWidgetSize.getResponsiveHeight(
                          MediaQuery.of(context).size, 0.001),
                    ),
                    child: OutlineButton(
                      borderSide: BorderSide(
                        color: AppColor.fontColor,
                      ),
                      padding: EdgeInsets.all(10),
                      onPressed: () {},
                      child: Text(
                        "LOGIN WITH FACEBOOK",
                        style: AppTheme.smallTextStyle(
                          appSize: MediaQuery.of(context).size,
                          color: AppColor.fontColor,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: FlatButton(
                      padding: EdgeInsets.all(10),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/SingUp');
                      },
                      child: Text(
                        "Don't have an account?Sign Up",
                        style: AppTheme.smallTextStyle(
                          appSize: MediaQuery.of(context).size,
                          color: AppColor.fontColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
