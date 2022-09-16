import 'package:donation/Routes/Routes_Names.dart';
import 'package:donation/Screens/home_screen.dart';
import 'package:donation/Screens/success.dart';
import 'package:flutter/material.dart';
import '../Screens/fundraise.dart';
import '../Screens/login_page.dart';
import '../Screens/sign_page.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.loginPage:
        return MaterialPageRoute(builder: (context) => Login());
      case RoutesName.signPage:
        return MaterialPageRoute(builder: (context) => SignIn());
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case RoutesName.fundRaise:
        return MaterialPageRoute(builder: (context) => FundRaise());
      case RoutesName.fundSuccess:
        return MaterialPageRoute(builder: (context) => Success());

      default:
        return MaterialPageRoute(builder: (context) {
          return Scaffold(
            body: Text('unvalid route'),
          );
        });
    }
  }
}
