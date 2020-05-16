import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:furnicharbazar/Data/AppConstant.dart';
import 'package:furnicharbazar/Theme/AppColor.dart';
import 'package:furnicharbazar/Theme/AppTheme.dart';
import 'package:furnicharbazar/Utilities/AppImages.dart';
import 'package:furnicharbazar/Utilities/AppWidgetSize.dart';

class AddToCart extends StatefulWidget {
  @override
  _AddToCartState createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //!Bottom button
      bottomNavigationBar: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.pushNamed(context, '/Checkout');
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        isExtended: true,
        child: Text(
          "CHECKOUT",
          style: AppTheme.smallTextStyle(
              appSize: MediaQuery.of(context).size, color: Colors.white),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Shopping cart",
          
          style: AppTheme.mediamTextStyle(
              appSize: MediaQuery.of(context).size,
              fontWeight: FontWeight.bold,
              color: AppColor.fontColor),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: IconThemeData(color: AppColor.fontColor),
        leading: IconButton(
          icon: Icon(Icons.close),
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
        child: ListView.builder(
          itemCount: AppConstant.cart.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.only(
                bottom: AppWidgetSize.getResponsiveHeight(
                  MediaQuery.of(context).size,
                  0.01,
                ),
              ),
              elevation: 0,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: Image.asset(
                            AppImage.getImage(imageName: '${AppConstant.cart[index][0]}'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(3),
                            child: Text(
                              "${AppConstant.cart[index][1]}",
                              style: AppTheme.mediamTextStyle(
                                  appSize: MediaQuery.of(context).size,
                                  color: AppColor.fontColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(3),
                            child: Text(
                              "${AppConstant.cart[index][2]}",
                              style: AppTheme.mediamTextStyle(
                                appSize: MediaQuery.of(context).size,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          //! Add to remove item qty + -
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    IconButton(
                                      icon: Icon(Icons.add),
                                      onPressed: () {},
                                    ),
                                    Text(
                                      "${AppConstant.cart[index][3]}",
                                      style: AppTheme.mediamTextStyle(
                                          appSize: MediaQuery.of(context).size,
                                          color: AppColor.fontColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.remove),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                                //!delete
                                IconButton(
                                    icon: Icon(
                                      Icons.delete_outline,
                                      color: Colors.red,
                                    ),
                                    onPressed: () {})
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    flex: 9,
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
