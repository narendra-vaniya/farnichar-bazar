import 'package:flutter/material.dart';
import 'package:furnicharbazar/Theme/AppColor.dart';

import 'package:furnicharbazar/Utilities/AppRoute.dart';

void main() => runApp(FurnicharBazar());

class FurnicharBazar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppRoute.get(),
      theme: ThemeData(
        primaryColor: AppColor.fontColor,
        cursorColor: AppColor.fontColor,
        accentColor: Colors.white,
      ),
      initialRoute: '/',
    );
  }
}
