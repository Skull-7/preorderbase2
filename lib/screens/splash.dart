import 'dart:async';

import 'package:flutter/material.dart';
import 'package:preorderbase2/screens/welcome_page.dart';

class splash extends StatefulWidget{
  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> with SingleTickerProviderStateMixin{
  late Animation animate;
  late AnimationController animatcon;
  late Animation colanimate;
  double opacity=0.0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animatcon=AnimationController(vsync: this, duration: Duration(seconds: 2));
    animate=Tween(begin: 100.0,end: 200.0,).animate(animatcon);
    colanimate=ColorTween(begin: Colors.cyan,end: Colors.blue).animate(animatcon);
    animatcon.addListener((){
      //print(animate.value);
      setState(() {

      });
    });
    animatcon.forward();
    Timer(Duration(seconds: 2),(){
      opacity=1.0;
      setState(() {

      });
    });
    Timer(Duration(seconds: 4),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>welcomepage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xffff8800),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: 150,
              left: 80,
              child: AnimatedOpacity(
                //width: animate.value,
                //height: animate.value,
                opacity: opacity,
                duration: Duration(seconds: 1),
                child: Container(
                  width: 200,
                  height: 200,
                  child: Image.asset(
                      "assets/images/PreOrderBase.jpg"
                      ),
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              left: 25,
              child: AnimatedOpacity(
                  opacity: opacity,
                  duration: Duration(seconds: 1),
                  child: Text("Welcome to Pre-Order Base",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ],
        ),
      )
    );
  }
}