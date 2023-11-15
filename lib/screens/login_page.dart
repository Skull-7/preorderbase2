import 'package:flutter/material.dart';
import 'package:preorderbase2/screens/main_page.dart';
import 'package:preorderbase2/screens/signin_page.dart';
import 'package:preorderbase2/widget/textfield.dart';
import 'package:shared_preferences/shared_preferences.dart';
class loginpage extends StatefulWidget{
  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Login",style: Theme.of(context).textTheme.headline1!),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(11.0),
                child: Column(
                  children: [
                    textfieldwithicon(
                      controller: null,
                        hinttext: "Username",
                        iconData: Icons.account_circle,
                      obb:false,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    textfieldwithicon(
                      controller: null,
                      hinttext: "Password",
                      iconData: Icons.lock_outline,
                      obb:false,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 45,
              child: ElevatedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>mainpage(curr: 0,)));
              },
                  child: Text("Log in"),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(21),
                      )
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("New user?"),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>signinpage()));
                }, child:Text("Register Now"))
              ],
            )
          ],
        ),
      ),
    );
  }
}