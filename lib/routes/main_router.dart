import 'package:flutter/material.dart';
import 'package:zomoto_task/features/home/search_screen/search_screen.dart';
import 'package:zomoto_task/features/loginandsignup/screens/login_screen.dart';
import 'package:zomoto_task/features/home/main_home/screens/main_home_screen.dart';
import 'package:zomoto_task/features/home/restaurants_and_dishes/restaurants_and_dishes_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  dynamic page;
  switch (routeSettings.name) {
    case LoginScreen.routeName:
      page = const LoginScreen();
      break;
    case MainHomeScreen.routeName:
      page = const MainHomeScreen();
      break;

    case RestaurantsAndDishesScreen.routeName:
      page = const RestaurantsAndDishesScreen();
      break;

    case SearchScreen.routeName:
      page = const SearchScreen();
      break;

    default:
      page = const Scaffold(
        body: Center(
          child: Text(
            "Page Doesn't Exists",
            style: TextStyle(fontSize: 26),
          ),
        ),
      );
  }
  return MaterialPageRoute<dynamic>(builder: (context) => page);
}
