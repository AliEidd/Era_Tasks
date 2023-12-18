import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'Colors.dart';
import 'HistoryPage.dart';
import 'HomeScreenPage.dart';
import 'NewWalletPage.dart';
import 'StorePage.dart';

class Button extends StatefulWidget {
  Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  int cureentIndex= 0;

  List<Widget> screens  = [
    HomeScreenPage(),
    HistoryPage(),
    StorePage(),
    NewWalletPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[cureentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: primary, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius:  BorderRadius.all(Radius.circular(30)),
          child: BottomNavigationBar(
            currentIndex: cureentIndex,

            onTap: (value) {
              setState(() {
                cureentIndex=value;
              }
              );
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.deepPurpleAccent  ,
            showSelectedLabels: !true,
            unselectedItemColor: Colors.white,
            backgroundColor: primary,
            showUnselectedLabels: !true,
            selectedIconTheme: IconThemeData(color: Colors.deepPurple),
            items: [
              BottomNavigationBarItem(
                  icon:Icon(Icons.home,size: 45,),
                  label: 'Home'
              ),
              BottomNavigationBarItem(
                  icon: Icon(MdiIcons.seal,size: 45,),
                  label: 'Prize'
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_rounded,size: 45,),
                  label: 'Store'
              ),
              BottomNavigationBarItem(
                  icon:Icon(Icons.person,size: 45,),
                  label: 'Profile'
              ),
            ],
          ),
        ),
      ),
    );
  }
}
