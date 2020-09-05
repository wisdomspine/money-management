import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:money_management/views/components/IncomeAndExpenseTile.dart';
import 'package:money_management/views/components/TransactionListTile.dart';
import 'package:money_management/views/components/WalletPocket.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter/material.dart';

import '../../main.dart';
import '../../main.dart';
import '../../main.dart';
import '../../main.dart';
import '../../main.dart';
import '../../main.dart';
import '../../main.dart';
import '../../main.dart';
import '../../main.dart';
import '../../main.dart';
import '../../main.dart';
import '../../main.dart';
import '../../main.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(EvaIcons.home),
            title: Offstage(child: null),
          ),
          BottomNavigationBarItem(
            icon: const Icon(OMIcons.insertChart),
            title: Offstage(child: null),
          ),
          BottomNavigationBarItem(
            icon: const Icon(FontAwesomeIcons.creditCard),
            title: Offstage(child: null),
          ),
          BottomNavigationBarItem(
            icon: const Icon(EvaIcons.personOutline),
            title: Offstage(child: null),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        elevation: 0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(top: 15.0),
          children: [
            Padding(
              padding: const EdgeInsets.all(kEdgePadding),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: Theme.of(context).textTheme.bodyText2.copyWith(
                                fontSize: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        .fontSize +
                                    2,
                              ),
                        ),
                        Text(
                          "Rebecca Fala",
                          style: Theme.of(context)
                              .textTheme
                              .headline3
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.notifications,
                    color: Colors.grey.shade500.withOpacity(0.9),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kEdgePadding,
                vertical: 10.0,
              ),
              child: Container(
                padding: const EdgeInsets.all(kEdgePadding),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: ListTile(
                  title: Text(
                    "\$2,821.00",
                    style: Theme.of(context).textTheme.headline1.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  subtitle: Text(
                    "Total Balance",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        .copyWith(color: Colors.white, height: 1.7),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: IncomeAndExpenseTile(
                      color: Theme.of(context).iconTheme.color,
                      iconData: Icons.arrow_downward,
                      title: "Income",
                      amount: "\$460.00",
                    ),
                  ),
                  Expanded(
                    child: IncomeAndExpenseTile(
                      color: kSecondaryAccentColor,
                      iconData: Icons.arrow_upward,
                      title: "Expenses",
                      amount: "\$231.00",
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                "Your Wallet",
                style: Theme.of(context).textTheme.headline4.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              subtitle: Text(
                "2 Budged, 1 Savings",
                style: Theme.of(context).textTheme.bodyText2,
              ),
              trailing: FractionallySizedBox(
                heightFactor: 1,
                child: Text(
                  "+ Add New",
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.width / 2 - 20,
              margin: EdgeInsets.only(
                bottom: kEdgePadding,
                top: kEdgePadding / 2,
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: kEdgePadding),
                children: [
                  WalletPocket(
                    amount: "\$45.00",
                    label: "Food",
                    color: Theme.of(context).primaryColor,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  WalletPocket(
                    amount: "\$150.00",
                    label: "Clothing",
                    color: kSecondaryAccentColor,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  WalletPocket(
                    amount: "\$60.00",
                    label: "Parking Space",
                    color: Theme.of(context).primaryColor,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(kEdgePadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    "Recent Transactions",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "See All",
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 9.0,
                    spreadRadius: 0.0,
                    color: Colors.black.withOpacity(0.1),
                  ),
                ],
              ),
              margin: EdgeInsets.only(
                bottom: kEdgePadding,
                left: kEdgePadding,
                right: kEdgePadding,
              ),
              child: Column(
                children: [
                  TransactionListTile(
                    name: "Food & Beverage",
                    description: "Today . Makan Bakso",
                    amount: "-\$15.00",
                    isPositive: false,
                    iconData: Icons.fastfood,
                    iconColor: kSecondaryAccentColor,
                  ),
                  TransactionListTile(
                    name: "Medecine",
                    description: "Today . Makan Bakso",
                    amount: "+\$15.00",
                    isPositive: true,
                    iconData: Icons.healing,
                    iconColor: Theme.of(context).primaryColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
