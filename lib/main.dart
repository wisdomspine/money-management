import 'package:flutter/material.dart';
import 'package:money_management/views/screens/HomeScreen.dart';

const Color kPrimarySwatch = Colors.indigo;
const double kEdgePadding = 16.0;
const Color kHeadingsColors = Color(0xFF3C324F);
const Color kBodyColor = Color(0xFFA7A6A8);
const Color kSecondaryAccentColor = Color(0xFFEC8B54);
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Money Management - Home",
      theme: ThemeData(
        primarySwatch: kPrimarySwatch,
        scaffoldBackgroundColor: Colors.white,
        bottomAppBarColor: Colors.white,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: kPrimarySwatch,
          unselectedItemColor: Colors.grey.shade400,
          type: BottomNavigationBarType.fixed,
          elevation: 20,
        ),
        iconTheme: IconThemeData(color: kPrimarySwatch),
        textTheme: TextTheme(
          headline1: Theme.of(context).textTheme.headline1.copyWith(
                fontSize: 40.0,
                fontWeight: FontWeight.normal,
                color: kHeadingsColors,
              ),
          headline2: Theme.of(context).textTheme.headline2.copyWith(
                fontSize: 34,
                fontWeight: FontWeight.normal,
                color: kHeadingsColors,
              ),
          headline3: Theme.of(context).textTheme.headline3.copyWith(
                fontSize: 28.0,
                fontWeight: FontWeight.normal,
                color: kHeadingsColors,
              ),
          headline4: Theme.of(context).textTheme.headline4.copyWith(
                fontSize: 22.0,
                fontWeight: FontWeight.normal,
                color: kHeadingsColors,
              ),
          headline5: Theme.of(context).textTheme.headline5.copyWith(
                fontSize: 20.0,
                fontWeight: FontWeight.normal,
                color: kHeadingsColors,
              ),
          headline6: Theme.of(context).textTheme.headline6.copyWith(
                fontSize: 18.0,
                fontWeight: FontWeight.normal,
                color: kHeadingsColors,
              ),
          bodyText1: Theme.of(context).textTheme.bodyText1.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: kBodyColor,
              ),
          bodyText2: Theme.of(context).textTheme.bodyText2.copyWith(
                fontSize: 15,
                color: kBodyColor,
              ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
