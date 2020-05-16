import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:furnicharbazar/Data/AppConstant.dart';
import 'package:furnicharbazar/Theme/AppColor.dart';
import 'package:furnicharbazar/Theme/AppTheme.dart';
import 'package:furnicharbazar/Utilities/AppImages.dart';
import 'package:furnicharbazar/Utilities/AppWidgetSize.dart';

class ProductList extends StatefulWidget {
  List productList;
  String title;

  ProductList({this.productList, this.title});

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  //!Fliter
  bool isNilkamal = false,
      isUshaLexus = false,
      isDurian = true,
      isDamro = false,
      isZuari = false;
  String sortBy = "1";

  List productList;
  String title;
  @override
  void initState() {
    //  title=data;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var jsonEncode = json.encode(ModalRoute.of(context).settings.arguments);
    var data = json.decode(jsonEncode);
    print(data);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "${data['title']}",
          style: AppTheme.mediamTextStyle(
              appSize: MediaQuery.of(context).size,
              fontWeight: FontWeight.bold,
              color: AppColor.fontColor),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: IconThemeData(color: AppColor.fontColor),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.filter_list),
              onPressed: () {
                _filter(context, isNilkamal, isUshaLexus, isDurian, isDamro,
                    isZuari, sortBy);
              })
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: GridView.builder(
            itemCount: data['productList'].length,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 0,
              crossAxisSpacing: 0,
              childAspectRatio: 0.77,
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/Product',arguments: {
                                  "title":"${data['productList'][index][1]}",
                                  "image":"${data['productList'][index][0]}",
                                  "price":"${data['productList'][index][2]}"
                                });
                },
                child: FittedBox(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
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
                                      imageName:
                                          '${data['productList'][index][0]}'),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: AppWidgetSize.getResponsiveWidth(
                              MediaQuery.of(context).size, 0.19),
                          padding: EdgeInsets.all(5),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${data['productList'][index][1]}",
                              style: AppTheme.smallTextStyle(
                                appSize: MediaQuery.of(context).size,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        Container(
                          width: AppWidgetSize.getResponsiveWidth(
                              MediaQuery.of(context).size, 0.19),
                          padding: EdgeInsets.all(5),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${data['productList'][index][2]}",
                              style: AppTheme.smallTextStyle(
                                  appSize: MediaQuery.of(context).size,
                                  color: Colors.grey),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}

//!Filter for products

_filter(BuildContext context, bool isNilkamal, bool isUshaLexust, bool isDurian,
    bool isDamro, bool isZuari, String sortBy) {
  double start = 0, end = 2000;
  return showDialog(
    context: context,
    builder: (context) {
      return Scaffold(
        backgroundColor: Colors.white,
        //!Bottom button
        bottomNavigationBar: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
          isExtended: true,
          child: Text(
            "APPLY",
            style: AppTheme.smallTextStyle(
                appSize: MediaQuery.of(context).size, color: Colors.white),
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Filters",
            style: AppTheme.mediamTextStyle(
                appSize: MediaQuery.of(context).size,
                fontWeight: FontWeight.bold,
                color: AppColor.fontColor),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: AppColor.fontColor),
          leading: IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: StatefulBuilder(
          builder: (context, StateSetter setState) {
            return Container(
              margin: EdgeInsets.symmetric(
                horizontal: AppWidgetSize.getResponsiveWidth(
                    MediaQuery.of(context).size, 0.022),
              ),
              child: Column(
                children: <Widget>[
                  Divider(color: Colors.white),

                  // Divider(),
                  Divider(
                    color: Colors.white,
                  ),
                  //!Filter by price
                  Container(
                    padding: EdgeInsets.only(
                      bottom: AppWidgetSize.getResponsiveHeight(
                        MediaQuery.of(context).size,
                        0.001,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text(
                          "Filters By Price",
                          style: AppTheme.mediamTextStyle(
                              appSize: MediaQuery.of(context).size,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  //!Range slider for product price
                  Container(
                    padding: EdgeInsets.only(
                      bottom: AppWidgetSize.getResponsiveHeight(
                        MediaQuery.of(context).size,
                        0.001,
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: RangeSlider(
                            activeColor: Colors.black,
                            inactiveColor: Colors.grey,
                            labels: RangeLabels('0', '50'),
                            min: 0,
                            max: 10000,
                            values: RangeValues(start, end),
                            onChanged: (d) {
                              setState(() {
                                start = d.start;
                                end = d.end;
                              });
                            },
                          ),
                        ),
                        //!show price selected by range slider
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "\$${start.toStringAsFixed(2)}",
                              style: AppTheme.mediamTextStyle(
                                appSize: MediaQuery.of(context).size,
                              ),
                            ),
                            Text(
                              "\$${end.toStringAsFixed(2)}",
                              style: AppTheme.mediamTextStyle(
                                appSize: MediaQuery.of(context).size,
                              ),
                            )
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                        ),
                        Divider(),
                        Divider(
                          color: Colors.white,
                        ),
                        Divider(
                          color: Colors.white,
                        ),
                        //!Sort by
                        Container(
                          padding: EdgeInsets.only(
                            bottom: AppWidgetSize.getResponsiveHeight(
                              MediaQuery.of(context).size,
                              0.001,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              child: Text(
                                "Sort By",
                                style: AppTheme.mediamTextStyle(
                                    appSize: MediaQuery.of(context).size,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: DropdownButtonFormField(
                              isExpanded: true,
                              value: sortBy,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(0),
                                hintText: 'Sort By ..',
                              ),
                              items: [
                                DropdownMenuItem(
                                  child: Text(
                                    "Price : Low to High",
                                    style: AppTheme.mediamTextStyle(
                                        appSize: MediaQuery.of(context).size,
                                        color: AppColor.fontColor),
                                  ),
                                  value: "1",
                                ),
                                DropdownMenuItem(
                                  child: Text(
                                    "Price : High to Low",
                                    style: AppTheme.mediamTextStyle(
                                        appSize: MediaQuery.of(context).size,
                                        color: AppColor.fontColor),
                                  ),
                                  value: "2",
                                ),
                                DropdownMenuItem(
                                  child: Text(
                                    "Avg.Customer Review",
                                    style: AppTheme.mediamTextStyle(
                                        appSize: MediaQuery.of(context).size,
                                        color: AppColor.fontColor),
                                  ),
                                  value: "3",
                                ),
                                DropdownMenuItem(
                                  child: Text(
                                    "Newest Arrivals",
                                    style: AppTheme.mediamTextStyle(
                                        appSize: MediaQuery.of(context).size,
                                        color: AppColor.fontColor),
                                  ),
                                  value: "4",
                                ),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  sortBy = value;
                                });
                              }),
                        ),
                        Divider(
                          color: Colors.white,
                        ),
                        Divider(),
                        Divider(
                          color: Colors.white,
                        ),
                        Divider(
                          color: Colors.white,
                        ),
                        //!Brand
                        Container(
                          padding: EdgeInsets.only(
                            bottom: AppWidgetSize.getResponsiveHeight(
                              MediaQuery.of(context).size,
                              0.001,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              child: Text(
                                "Brand",
                                style: AppTheme.mediamTextStyle(
                                    appSize: MediaQuery.of(context).size,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        //!Brand row 1
                        FittedBox(
                          child: Row(
                            children: <Widget>[
                              ChoiceChip(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                label: Text("Nilkamal"),
                                labelStyle: AppTheme.smallTextStyle(
                                    appSize: MediaQuery.of(context).size,
                                    color: Colors.white),
                                selected: isNilkamal,
                                backgroundColor: Colors.black38,
                                selectedColor: Colors.black,
                                onSelected: (v) {
                                  setState(() {
                                    isNilkamal = v;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              ChoiceChip(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                labelStyle: AppTheme.smallTextStyle(
                                    appSize: MediaQuery.of(context).size,
                                    color: Colors.white),
                                label: Text("Usha lexus"),
                                selected: isUshaLexust,
                                backgroundColor: Colors.black38,
                                selectedColor: Colors.black,
                                onSelected: (v) {
                                  setState(() {
                                    isUshaLexust = v;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        //!Brand row 2
                        FittedBox(
                          child: Row(
                            children: <Widget>[
                              ChoiceChip(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                label: Text("Durian"),
                                labelStyle: AppTheme.smallTextStyle(
                                    appSize: MediaQuery.of(context).size,
                                    color: Colors.white),
                                selected: isDurian,
                                backgroundColor: Colors.black38,
                                selectedColor: Colors.black,
                                onSelected: (v) {
                                  setState(() {
                                    isDurian = v;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              ChoiceChip(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                label: Text("Damro"),
                                labelStyle: AppTheme.smallTextStyle(
                                    appSize: MediaQuery.of(context).size,
                                    color: Colors.white),
                                selected: isDamro,
                                backgroundColor: Colors.black38,
                                selectedColor: Colors.black,
                                onSelected: (v) {
                                  setState(() {
                                    isDamro = v;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              ChoiceChip(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                labelStyle: AppTheme.smallTextStyle(
                                    appSize: MediaQuery.of(context).size,
                                    color: Colors.white),
                                label: Text("Zuari"),
                                selected: isZuari,
                                backgroundColor: Colors.black38,
                                selectedColor: Colors.black,
                                onSelected: (v) {
                                  setState(() {
                                    isZuari = v;
                                  });
                                },
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      );
    },
  );
}
