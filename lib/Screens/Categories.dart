import 'package:flutter/material.dart';
import 'package:furnicharbazar/Data/AppConstant.dart';
import 'package:furnicharbazar/Screens/Widgets/Drawer.dart';
import 'package:furnicharbazar/Theme/AppColor.dart';
import 'package:furnicharbazar/Theme/AppTheme.dart';
import 'package:furnicharbazar/Utilities/AppImages.dart';
import 'package:furnicharbazar/Utilities/AppWidgetSize.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(context),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          "Categories",
          style: AppTheme.mediamTextStyle(
            appSize: MediaQuery.of(context).size,
            fontWeight: FontWeight.bold,
            color: AppColor.fontColor,
          ),
        ),
        iconTheme: IconThemeData(color: AppColor.fontColor),
      ),
      body: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
                width: 1,
              ),
            ),
          ),
          padding: EdgeInsets.all(15),
          child: ListView.builder(
              itemCount: AppConstant.categoties2.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/ProductList',
                                    arguments: {
                                      "title":
                                          "${AppConstant.categoties2[index][1]}",
                                      "productList":
                                          AppConstant.categoties2[index][2]
                                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColor.primaryColor),
                          width: AppWidgetSize.getResponsiveWidth(
                              MediaQuery.of(context).size, 0.11),
                          height: AppWidgetSize.getResponsiveWidth(
                              MediaQuery.of(context).size, 0.11),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: Image.asset(
                                AppImage.getImage(imageName: "${AppConstant.categoties2[index][0]}"),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "${AppConstant.categoties2[index][1]}"
                               ,  
                            style: AppTheme.smallTextStyle(
                              appSize: MediaQuery.of(context).size,
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Icon(Icons.keyboard_arrow_right)
                      ],
                    ),
                  ),
                );
              })),
    );
  }
}
