import 'package:flutter/material.dart';
import 'package:furnicharbazar/Data/AppConstant.dart';
import 'package:furnicharbazar/Screens/Widgets/Drawer.dart';
import 'package:furnicharbazar/Theme/AppColor.dart';
import 'package:furnicharbazar/Theme/AppTheme.dart';
import 'package:furnicharbazar/Utilities/AppImages.dart';
import 'package:furnicharbazar/Utilities/AppWidgetSize.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: drawer(context),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColor.fontColor),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.shopping_basket), onPressed: () {
            Navigator.pushNamed(context, '/Cart');
          })
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: AppWidgetSize.getResponsiveWidth(
              MediaQuery.of(context).size, 0.022),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(bottom: 2),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          child: Text(
                            "Explore",
                            style: AppTheme.xlargeTextStyle(
                                appSize: MediaQuery.of(context).size,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: AppWidgetSize.getResponsiveWidth(
                            MediaQuery.of(context).size, 0.2),
                        maxHeight: AppWidgetSize.getResponsiveWidth(
                            MediaQuery.of(context).size, 0.25),
                      ),
                      child: ListView.builder(
                          itemCount: AppConstant.categoties.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/ProductList',
                                    arguments: {
                                      "title":
                                          "${AppConstant.categoties[index][1]}",
                                      "productList":
                                          AppConstant.categoties[index][3]
                                    });
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Card(
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: AppColor.primaryColor,
                                      ),
                                      padding: EdgeInsets.all(10),
                                      width: AppWidgetSize.getResponsiveWidth(
                                          MediaQuery.of(context).size, 0.15),
                                      child: FittedBox(
                                        child: Image.asset(
                                          AppImage.getIcon(
                                              iconName: AppConstant
                                                  .categoties[index][0]),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    child: Text(
                                      "${AppConstant.categoties[index][1]}",
                                      style: AppTheme.smallTextStyle(
                                        appSize: MediaQuery.of(context).size,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text(
                                      "${AppConstant.categoties[index][2]}",
                                      style: AppTheme.smallTextStyle(
                                          appSize: MediaQuery.of(context).size,
                                          color: Colors.grey),
                                    ),
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                    //!2
                    Container(
                      padding: EdgeInsets.only(bottom: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Text(
                              "Best sellers",
                              style: AppTheme.largeTextStyle(
                                  appSize: MediaQuery.of(context).size,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            child: InkWell(
                              onTap: (){
                                 Navigator.pushNamed(context, '/ProductList',
                                    arguments: {
                                      "title":
                                          "Best Sellers",
                                      "productList":
                                          AppConstant.bestSellers
                                    });
                              },
                              child: Text(
                                "Show all",
                                style: AppTheme.smallTextStyle(
                                    appSize: MediaQuery.of(context).size,
                                    color: Colors.grey),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: AppWidgetSize.getResponsiveWidth(
                            MediaQuery.of(context).size, 0.2),
                        maxHeight: AppWidgetSize.getResponsiveWidth(
                            MediaQuery.of(context).size, 0.35),
                      ),
                      child: ListView.builder(
                          itemCount: AppConstant.bestSellers.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                
                                Navigator.pushNamed(context, '/Product',arguments: {
                                  "title":"${AppConstant.bestSellers[index][1]}",
                                  "image":"${AppConstant.bestSellers[index][0]}",
                                  "price":"${AppConstant.bestSellers[index][2]}"
                                });
                              },
                              child: Container(
                                // color: AppColor.grey,
                                margin: EdgeInsets.symmetric(horizontal: 2),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Card(
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: AppColor.grey),
                                        width: AppWidgetSize.getResponsiveWidth(
                                            MediaQuery.of(context).size, 0.19),
                                        height:
                                            AppWidgetSize.getResponsiveWidth(
                                                MediaQuery.of(context).size,
                                                0.19),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: FittedBox(
                                            fit: BoxFit.cover,
                                            child: Image.asset(
                                              AppImage.getImage(
                                                  imageName:
                                                      '${AppConstant.bestSellers[index][0]}'),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: AppWidgetSize.getResponsiveWidth(
                                          MediaQuery.of(context).size, 0.19),
                                      padding: EdgeInsets.all(5),
                                      child: Text(
                                        "${AppConstant.bestSellers[index][1]}",
                                        style: AppTheme.smallTextStyle(
                                          appSize: MediaQuery.of(context).size,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 5),
                                      child: Text(
                                        "${AppConstant.bestSellers[index][2]}",
                                        style: AppTheme.smallTextStyle(
                                            appSize:
                                                MediaQuery.of(context).size,
                                            color: Colors.grey),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                    //!3
                    Container(
                      padding: EdgeInsets.only(bottom: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Text(
                              "New arrivals",
                              style: AppTheme.largeTextStyle(
                                  appSize: MediaQuery.of(context).size,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            child: InkWell(
                              onTap: (){
                                 Navigator.pushNamed(context, '/ProductList',
                                    arguments: {
                                      "title":
                                          "New arrivals",
                                      "productList":
                                          AppConstant.newArrivals
                                    });
                              },
                              child: Text(
                                "Show all",
                                style: AppTheme.smallTextStyle(
                                    appSize: MediaQuery.of(context).size,
                                    color: Colors.grey),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: AppWidgetSize.getResponsiveWidth(
                            MediaQuery.of(context).size, 0.2),
                        maxHeight: AppWidgetSize.getResponsiveWidth(
                            MediaQuery.of(context).size, 0.35),
                      ),
                      child: ListView.builder(
                          itemCount: AppConstant.newArrivals.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, '/Product',arguments: {
                                  "title":"${AppConstant.newArrivals[index][1]}",
                                  "image":"${AppConstant.newArrivals[index][0]}",
                                  "price":"${AppConstant.newArrivals[index][2]}"
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.symmetric(horizontal: 2),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: AppColor.grey),
                                        width: AppWidgetSize.getResponsiveWidth(
                                            MediaQuery.of(context).size, 0.19),
                                        height: AppWidgetSize.getResponsiveWidth(
                                            MediaQuery.of(context).size, 0.19),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: FittedBox(
                                            fit: BoxFit.cover,
                                            child: Image.asset(
                                              AppImage.getImage(
                                                  imageName: '${AppConstant.newArrivals[index][0]}'),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: AppWidgetSize.getResponsiveWidth(
                                          MediaQuery.of(context).size, 0.19),
                                      padding: EdgeInsets.all(5),
                                      child: Text(
                                        "${AppConstant.newArrivals[index][1]}",
                                        style: AppTheme.smallTextStyle(
                                          appSize: MediaQuery.of(context).size,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: AppWidgetSize.getResponsiveWidth(
                                          MediaQuery.of(context).size, 0.19),
                                      padding: EdgeInsets.only(left: 5),
                                      child: Text(
                                        "${AppConstant.newArrivals[index][2]}",
                                        style: AppTheme.smallTextStyle(
                                            appSize: MediaQuery.of(context).size,
                                            color: Colors.grey),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}
