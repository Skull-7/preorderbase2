import 'package:flutter/material.dart';
import 'package:preorderbase2/mainscreens/home_page.dart';
import 'package:preorderbase2/screens/main_page.dart';
import 'package:preorderbase2/screens/welcome_page.dart';
import 'package:preorderbase2/user_page_options/Help_and_support_page.dart';
import 'package:preorderbase2/user_page_options/terms_and_condition.dart';
import 'package:preorderbase2/user_page_options/user_profiler.dart';

import '../user_page_options/about_us_page.dart';
int page1=0;
int page2=1;
class userprofile_page extends StatelessWidget{
  final list=[
    "Home",
    "Menu",
    "Orders",
    "Language",
    "Help & support",
    "Terms & Condition",
    "About Us"
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 500,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>mall()));
                    },
                    child: ListTile(
                      leading: Icon(Icons.account_circle),
                      title: Text("Profile"),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context){
                        return mainpage(curr: page1,);
                      }), (r){
                        return false;
                      });
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>mainpage(curr: page1,)));
                    },
                    child: ListTile(
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context){
                        return mainpage(curr: page2,);
                      }), (r){
                        return false;
                      });

                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>mainpage(curr: page2,)));
                    },
                    child: ListTile(
                      leading: Icon(Icons.menu),
                      title: Text("Menu"),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>help_and_support()));
                    },
                    child: ListTile(
                      leading: Icon(Icons.help_center),
                      title: Text("Help & support"),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>terms_and_condition_page()));
                    },
                    child: ListTile(
                      leading: Icon(Icons.policy_sharp),
                      title: Text("Terms & Conditions"),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: ListTile(
                      leading: Icon(Icons.language),
                      title: Text("Language"),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>about_us()));
                    },
                    child: ListTile(
                      leading: Icon(Icons.question_mark),
                      title: Text("About Us"),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>welcomepage()));
                    },
                    child: ListTile(
                      leading: Icon(Icons.logout_sharp),
                      title: Text("Log Out"),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}