import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:preorderbase2/mainscreens/menu_page.dart';
import 'package:preorderbase2/mainscreens/home_page.dart';
import 'package:preorderbase2/screens/login_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:preorderbase2/screens/signin_page.dart';

import '../mainscreens/userprofile.dart';

class mainpage extends StatefulWidget{
  int? curr=0;

  mainpage({this.curr});

  @override
  State<mainpage> createState()=>mainpagecal(currentIndex: curr);
}
class mainpagecal extends State<mainpage> {
  var itemslist = [
    "Home",
    "Menu",
    "Orders",
    "Language",
    "Help & support",
    "Terms & Condition",
    "About Us"
  ];
  //var items_fun = [home(),Menu(),Orders(),Language(),Help & support(),About Us()];
  int? currentIndex;

  mainpagecal({this.currentIndex});
  @override
  void _onTabTapped(int index) {
    // This method will be called when a tab is tapped.
    setState(() {
      currentIndex = index;
    });

    // You can add additional logic here based on the selected tab.
    if (index == 0) {
    } else if (index == 1) {
      loginpage();
    } else if (index == 2) {
      // Execute code specific to the third tab.
    }}
    @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(
          bottomNavigationBar: CurvedNavigationBar(
            //currentIndex: _currentIndex,
            color: Colors.orange,
            backgroundColor: Colors.white,
            onTap: _onTabTapped,
            items: [
              Icon(Icons.home,color: Colors.white,),
              Icon(Icons.menu,color: Colors.white),
              Icon(Icons.person,color: Colors.white),
            ],
          ),
          body: Container(
            color: Colors.white,
            child: Center(
              child: currentIndex==0?home():currentIndex==1? RestaurantDetailScreen(restaurantName: "PreorderBase",):userprofile_page(),
            ),
          )
      );
    }
  }
  /*drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                      color: Colors.orange
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/images/non_profile.jpg",),
                        minRadius: 40,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'User',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: Text(itemslist[0]),
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => mainpage()));
                  },
                ),
                ListTile(
                  title: Text(itemslist[1]),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(itemslist[2]),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(itemslist[3]),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(itemslist[4]),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(itemslist[5]),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(itemslist[6]),
                  onTap: () {},
                ), // Add more ListTiles for additional items.
              ],
            ),
          ),*/