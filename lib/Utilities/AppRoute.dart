import 'package:furnicharbazar/Screens/Categories.dart';
import 'package:furnicharbazar/Screens/Dashboard.dart';
import 'package:furnicharbazar/Screens/ForgotPassword.dart';
import 'package:furnicharbazar/Screens/Login.dart';
import 'package:furnicharbazar/Screens/ProductList.dart';
import 'package:furnicharbazar/Screens/ProductPage.dart';
import 'package:furnicharbazar/Screens/SingUp.dart';
import 'package:furnicharbazar/Screens/addToCart.dart';
import 'package:furnicharbazar/Screens/loginType.dart';
import 'package:furnicharbazar/Screens/payment.dart';
import 'package:furnicharbazar/Screens/paymentSuccessful.dart';

class AppRoute {
  static get() {
    return {
      '/': (context) => LoginType(),
      '/Login': (context) => Login(),
      '/SingUp': (context) => SignUp(),
      '/ForgotPassword': (context) => ForgotPassword(),
      '/Home': (context) => DashBoard(),
      '/Product': (context) => ProductPage(),
      '/Cart': (context) => AddToCart(),
      '/Checkout': (context) => Payment(),
      '/PaymentDone': (context) => PaymentSuccessful(),
      '/ProductList': (context) => ProductList(title: null,productList: null),
      '/Categories': (context) => Categories(),
    };
  }
}
