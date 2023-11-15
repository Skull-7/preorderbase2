import 'dart:async';

import 'package:flutter/material.dart';
import 'package:preorderbase2/mainscreens/menu_page.dart';
import 'package:preorderbase2/screens/main_page.dart';

class order_placed extends StatefulWidget{
  TimeOfDay? time;

  order_placed({this.time});

  @override
  State<order_placed> createState() => _order_placedState();
}

class _order_placedState extends State<order_placed> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 5), () {
      //Navigator.pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>RestaurantDetailScreen(restaurantName: "PreOrderBase")), (Route route) => false);
      //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>mainpage()));//RestaurantDetailScreen(restaurantName: "PreOrderBase",)));
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context){
        return mainpage();
      }), (r){
        return false;
      });

    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/check_mark.png",
              width: 100,
              height: 100,
            ),
            SizedBox(height: 16),
            Text(
              "Your Order has been placed",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              widget.time != null
                  ? "You will receive your order by ${widget.time?.format(context)}"
                  : "You will receive your order in 30 min",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 16),
            /*ElevatedButton(
              onPressed: () {
                // Add any action you want for a button press here
              },
              child: Text("Track Order"),
            ),*/
          ],
        ),
      ),
    );/*Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/check_mark.png",),
            Text("Your Order is been placed"),
            widget.time!=null?Text("You will recive your order by ${widget.time?.format(context)}"):Text("You will recive your order in 30 min")
          ],
        ),
      ),
    );*/
  }
}