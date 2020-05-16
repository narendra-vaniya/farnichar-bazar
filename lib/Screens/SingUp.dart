import 'package:flutter/material.dart';
import 'package:furnicharbazar/Theme/AppColor.dart';
import 'package:furnicharbazar/Theme/AppTheme.dart';
import 'package:furnicharbazar/Utilities/AppWidgetSize.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
        child: Column(
          children: <Widget>[
            Expanded(
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
                        "Personal details",
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
                                  MediaQuery.of(context).size, 0.035),
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
                                  MediaQuery.of(context).size, 0.035),
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
                                  MediaQuery.of(context).size, 0.035),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Phone',
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
                                  MediaQuery.of(context).size, 0.065),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Address',
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
                                "SING UP",
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
            Container(
              child: FlatButton(
                padding: EdgeInsets.all(10),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/Login');
                },
                child: Text(
                  "Already have an account?Sign In",
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
    );
  }
}
