//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:preorderbase2/screens/login_page.dart';
import 'package:preorderbase2/screens/signin_page.dart';
import 'login_and_regestration_with_shared.dart';

class welcomepage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 40,
              ),
              Image.asset("assets/images/PreOrderBase.jpg"),
              SizedBox(
                height: 20,
              ),
              Text("Welcome to Pre-Order Base",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:  Colors.orange),),
              SizedBox(
                width: 300,
                  child: Column(
                    children: [
                      Text("Order Food online and Prebook your meal with"),
                      Text("our app",)
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 200,
                        height: 45,
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                        },
                          child: Text("Log in",style: TextStyle(color: Colors.white),),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(21),
                            )
                          )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 200,
                        height: 45,
                        child: OutlinedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationPage()));
                        },
                          child: Text("Sign in"),
                          style: OutlinedButton.styleFrom(
                              shape:RoundedRectangleBorder(
                                borderRadius:BorderRadius.circular(21),
                                side: BorderSide(
                                  color: Colors.orange,
                                  width: 1
                                )
                              )
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}