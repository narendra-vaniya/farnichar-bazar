import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:furnicharbazar/Screens/Widgets/Drawer.dart';
import 'package:furnicharbazar/Theme/AppColor.dart';
import 'package:furnicharbazar/Theme/AppTheme.dart';
import 'package:furnicharbazar/Utilities/AppImages.dart';
import 'package:furnicharbazar/Utilities/AppWidgetSize.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  int tabIndex = 0;
  @override
  void initState() {
    tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var jsonEncode = json.encode(ModalRoute.of(context).settings.arguments);
    var data = json.decode(jsonEncode);
    print(data);
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: drawer(context),
      bottomNavigationBar: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.pushNamed(context, '/Cart');
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        isExtended: true,
        child: Text(
          "ADD TO CART",
          style: AppTheme.smallTextStyle(
              appSize: MediaQuery.of(context).size, color: Colors.white),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColor.fontColor),
        title: Text(
          "${data['title']}",
          style: AppTheme.mediamTextStyle(
              appSize: MediaQuery.of(context).size,
              color: AppColor.fontColor,
              fontWeight: FontWeight.bold),
        ),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //!Product images
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(
                          bottom: AppWidgetSize.getResponsiveHeight(
                              MediaQuery.of(context).size, 0.02),
                        ),
                        decoration: BoxDecoration(color: AppColor.grey),
                        width: AppWidgetSize.getResponsiveWidth(
                            MediaQuery.of(context).size, 0.48),
                        height: AppWidgetSize.getResponsiveWidth(
                            MediaQuery.of(context).size, 0.35),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Image.asset(
                              AppImage.getImage(imageName: '${data['image']}'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    //!Product name
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(
                          bottom: AppWidgetSize.getResponsiveHeight(
                              MediaQuery.of(context).size, 0.01),
                        ),
                        width: AppWidgetSize.getResponsiveWidth(
                            MediaQuery.of(context).size, 0.44),
                        child: Text(
                          "${data['title']}",
                          style: AppTheme.largeTextStyle(
                              appSize: MediaQuery.of(context).size,
                              color: AppColor.fontColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    //!Product price
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(
                          bottom: AppWidgetSize.getResponsiveHeight(
                              MediaQuery.of(context).size, 0.01),
                        ),
                        width: AppWidgetSize.getResponsiveWidth(
                            MediaQuery.of(context).size, 0.44),
                        child: Text(
                          "${data['price']}",
                          style: AppTheme.smallTextStyle(
                            appSize: MediaQuery.of(context).size,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    //!Product details
                    Container(
                      child: Column(
                        children: <Widget>[
                          //!tab
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Expanded(
                                child: FlatButton(
                                  shape: Border(
                                    bottom: BorderSide(
                                        color: (tabIndex == 0)
                                            ? AppColor.fontColor
                                            : Colors.transparent,
                                        width: 1.5),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      tabIndex = 0;
                                    });
                                  },
                                  child: Text(
                                    "Descripton",
                                    style: AppTheme.smallTextStyle(
                                        appSize: MediaQuery.of(context).size,
                                        color: AppColor.fontColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: FlatButton(
                                  shape: Border(
                                    bottom: BorderSide(
                                        color: (tabIndex == 1)
                                            ? AppColor.fontColor
                                            : Colors.transparent,
                                        width: 1.5),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      tabIndex = 1;
                                    });
                                  },
                                  child: Text(
                                    "Reviews",
                                    style: AppTheme.smallTextStyle(
                                        appSize: MediaQuery.of(context).size,
                                        color: AppColor.fontColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //!Tabbar view
                          (tabIndex == 0)
                              //!Description
                              ? Center(
                                  child: Container(
                                    padding: EdgeInsets.only(top: 8),
                                    width: AppWidgetSize.getResponsiveWidth(
                                        MediaQuery.of(context).size, 0.5),
                                    child: Text(
                                      "Bedroom is an essentiality that cannot be skipped. With our brilliant collection of beds in various sizes, and furniture to accessorize your bedroom, it’s time to catch your dreams.Bedroom is an essentiality that cannot be skipped. With our brilliant collection of beds in various sizes, and furniture to accessorize your bedroom, it’s time to catch your dreams.",
                                      style: AppTheme.smallTextStyle(
                                        appSize: MediaQuery.of(context).size,
                                        color: AppColor.fontColor,
                                      ),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                )
                              : Center(
                                  child: ConstrainedBox(
                                    constraints: BoxConstraints(
                                      minHeight:
                                          AppWidgetSize.getResponsiveWidth(
                                              MediaQuery.of(context).size, 0.2),
                                      maxHeight:
                                          AppWidgetSize.getResponsiveWidth(
                                              MediaQuery.of(context).size,
                                              0.65),
                                    ),
                                    child: ListView.builder(
                                      itemCount: 15,
                                      itemBuilder: (context, index) {
                                        return ListTile(
                                          leading: Icon(Icons.account_circle),
                                          title: Text(
                                            "User $index",
                                            style: AppTheme.smallTextStyle(
                                                appSize:
                                                    MediaQuery.of(context).size,
                                                color: AppColor.fontColor,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          subtitle: Text(
                                            "This product is best $index",
                                            style: AppTheme.smallTextStyle(
                                                appSize:
                                                    MediaQuery.of(context).size,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
