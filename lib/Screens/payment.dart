import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furnicharbazar/Theme/AppColor.dart';
import 'package:furnicharbazar/Theme/AppTheme.dart';
import 'package:furnicharbazar/Utilities/AppWidgetSize.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  String _paymentType = "1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //!Bottom button
      bottomNavigationBar: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          payment(context);
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/PaymentDone');
          });
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        isExtended: true,
        child: Text(
          "PAYMENT",
          style: AppTheme.smallTextStyle(
              appSize: MediaQuery.of(context).size, color: Colors.white),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        title: Text(
          "Checkout",
          style: AppTheme.mediamTextStyle(
              appSize: MediaQuery.of(context).size,
              fontWeight: FontWeight.bold,
              color: AppColor.fontColor),
        ),
        iconTheme: IconThemeData(color: AppColor.fontColor),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: AppWidgetSize.getResponsiveWidth(
              MediaQuery.of(context).size, 0.02),
          vertical: AppWidgetSize.getResponsiveHeight(
              MediaQuery.of(context).size, 0.01),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Column(
              children: <Widget>[
                // Container(
                //   padding: EdgeInsets.only(bottom: 2),
                //   child: Align(
                //     alignment: Alignment.centerLeft,
                //     child: Container(
                //       child: Text(
                //         "Checkout",
                //         style: AppTheme.xxlargeTextStyle(
                //             appSize: MediaQuery.of(context).size,
                //             fontWeight: FontWeight.bold),
                //       ),
                //     ),
                //   ),
                // ),
                // Divider(),
                //!Shipping to text
                Container(
                  padding: EdgeInsets.only(bottom: 4),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(
                        "Shipping to",
                        style: AppTheme.mediamTextStyle(
                            appSize: MediaQuery.of(context).size,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                //!Address
                Container(
                  child: Card(
                    elevation: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: AppWidgetSize.getResponsiveHeight(
                                MediaQuery.of(context).size,
                                0.02,
                              ),
                              horizontal: AppWidgetSize.getResponsiveWidth(
                                MediaQuery.of(context).size,
                                0.02,
                              ),
                            ),
                            child: Icon(Icons.home,
                                color: AppColor.fontColor, size: 30),
                          ),
                          flex: 1,
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: AppWidgetSize.getResponsiveHeight(
                                  MediaQuery.of(context).size, 0.01),
                              horizontal: AppWidgetSize.getResponsiveWidth(
                                MediaQuery.of(context).size,
                                0.02,
                              ),
                            ),
                            child: Text(
                              "123 Main Street,1st Block 1st Cross Example, Gujarat, India",
                              style: AppTheme.smallTextStyle(
                                appSize: MediaQuery.of(context).size,
                              ),
                              softWrap: true,
                            ),
                          ),
                          flex: 3,
                        ),
                      ],
                    ),
                  ),
                ),

                Divider(
                  color: Colors.white,
                ),

                Divider(
                  color: Colors.white,
                ),
                //!payment text
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(
                        "Payment method",
                        style: AppTheme.mediamTextStyle(
                            appSize: MediaQuery.of(context).size,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                //!Select payment method 1
                Container(
                  child: Card(
                    elevation: 0,
                    margin: EdgeInsets.all(5),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          _paymentType = "1";
                        });
                      },
                      selected: (_paymentType == "1") ? true : false,
                      leading: Icon(Icons.credit_card),
                      title: Text(
                        "**** **** **** 8487",
                        style: AppTheme.smallTextStyle(
                            appSize: MediaQuery.of(context).size,
                            color: AppColor.fontColor),
                      ),
                      trailing: Icon(Icons.check_circle_outline),
                    ),
                  ),
                ),
                //!Select payment method 2
                Container(
                  child: Card(
                    elevation: 0,
                    margin: EdgeInsets.all(5),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          _paymentType = "2";
                        });
                      },
                      selected: (_paymentType == "2") ? true : false,
                      leading: Icon(Icons.credit_card),
                      title: Text(
                        "**** **** **** 8487",
                        style: AppTheme.smallTextStyle(
                            appSize: MediaQuery.of(context).size,
                            color: AppColor.fontColor),
                      ),
                      trailing: Icon(Icons.check_circle_outline),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white,
                ),
                Divider(
                  color: Colors.white,
                ),
                Divider(),
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Shipping fee",
                          style: AppTheme.smallTextStyle(
                              appSize: MediaQuery.of(context).size,
                              color: Colors.grey),
                        ),
                        Text(
                          "\$5",
                          style: AppTheme.smallTextStyle(
                              appSize: MediaQuery.of(context).size,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Sub total",
                          style: AppTheme.smallTextStyle(
                              appSize: MediaQuery.of(context).size,
                              color: Colors.grey),
                        ),
                        Text(
                          "\$59",
                          style: AppTheme.smallTextStyle(
                              appSize: MediaQuery.of(context).size,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Total",
                          style: AppTheme.smallTextStyle(
                            appSize: MediaQuery.of(context).size,
                            color: AppColor.fontColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "\$64",
                          style: AppTheme.smallTextStyle(
                            appSize: MediaQuery.of(context).size,
                            color: AppColor.fontColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

payment(BuildContext context) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return AlertDialog(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        title: Center(
          child: RefreshProgressIndicator(
            backgroundColor: AppColor.fontColor,
          ),
        ),
        content: Text(
          "Please do not press Back or Refresh",
          style: AppTheme.mediamTextStyle(
            appSize: MediaQuery.of(context).size,
            color: AppColor.fontColor,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      );
    },
  );
}
