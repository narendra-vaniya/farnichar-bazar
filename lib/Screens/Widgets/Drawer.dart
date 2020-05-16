import 'package:flutter/material.dart';
import 'package:furnicharbazar/Data/AppConstant.dart';
import 'package:furnicharbazar/Theme/AppColor.dart';
import 'package:furnicharbazar/Theme/AppTheme.dart';
import 'package:furnicharbazar/Utilities/AppImages.dart';

Widget drawer(BuildContext context) {
  return Drawer(
    elevation: 8,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        DrawerHeader(
          margin: EdgeInsets.all(0),
          padding: EdgeInsets.all(0),
          child: FittedBox(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 80,
                    height: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: Image.asset(
                          AppImage.getImage(imageName: 'tmp.jpg'),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Narendra vaniya",
                        style: AppTheme.mediamTextStyle(
                            appSize: MediaQuery.of(context).size,
                            color: AppColor.fontColor,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "example@gmail.com",
                        style: AppTheme.mediamTextStyle(
                          appSize: MediaQuery.of(context).size,
                          color: AppColor.fontColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        // Divider(),
        ListTile(
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/Home', (Route r) => false);
          },
          contentPadding: EdgeInsets.only(left: 25),
          title: Text(
            "Home",
            style: AppTheme.mediamTextStyle(
                appSize: MediaQuery.of(context).size,
                color: AppColor.fontColor,
                fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/Categories', (Route r) => false);
          },
          contentPadding: EdgeInsets.only(left: 25),
          title: Text(
            "Categories",
            style: AppTheme.mediamTextStyle(
                appSize: MediaQuery.of(context).size,
                color: AppColor.fontColor,
                fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          onTap: () {
            Navigator.pushNamed(context, '/ProductList', arguments: {
              "title": "New arrivals",
              "productList": AppConstant.newArrivals
            });
          },
          contentPadding: EdgeInsets.only(left: 25),
          title: Text(
            "New collections",
            style: AppTheme.mediamTextStyle(
                appSize: MediaQuery.of(context).size,
                color: AppColor.fontColor,
                fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/Home', (Route r) => false);
          },
          contentPadding: EdgeInsets.only(left: 25),
          title: Text(
            "Top Deals",
            style: AppTheme.mediamTextStyle(
                appSize: MediaQuery.of(context).size,
                color: AppColor.fontColor,
                fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          onTap: () {},
          contentPadding: EdgeInsets.only(left: 25),
          title: Text(
            "My Profile",
            style: AppTheme.mediamTextStyle(
                appSize: MediaQuery.of(context).size,
                color: AppColor.fontColor,
                fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          onTap: () {},
          contentPadding: EdgeInsets.only(left: 25),
          title: Text(
            "Settings",
            style: AppTheme.mediamTextStyle(
                appSize: MediaQuery.of(context).size,
                color: AppColor.fontColor,
                fontWeight: FontWeight.bold),
          ),
        )
      ],
    ),
  );
}
