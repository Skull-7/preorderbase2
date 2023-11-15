import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:preorderbase2/screens/login_page.dart';
import 'package:preorderbase2/widget/textfield.dart';
import 'package:email_validator/email_validator.dart';
class signinpage extends StatefulWidget{
  @override
  State<signinpage> createState() => _signinpageState();
}
class _signinpageState extends State<signinpage> {
  TextEditingController firstname=TextEditingController();
  TextEditingController lastname=TextEditingController();
  var email=TextEditingController();
  TextEditingController password=TextEditingController();
  TextEditingController confirm_password=TextEditingController();
  GlobalKey<ScaffoldState> globalKey= GlobalKey<ScaffoldState>();
  @override
  void validation(){
    if(firstname.text.trim().isEmpty || firstname.text.trim()==null ){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.blueAccent,
            content: Center(child: Text("Firstname is empty!!",style: TextStyle(color: Colors.white)))
        )
      );
    }
    if(lastname.text.trim().isEmpty || lastname.text.trim()==null ){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              backgroundColor: Colors.blueAccent,
              content: Center(child: Text("Lastname is empty!!",style: TextStyle(color: Colors.white)))
          )
      );
    }
    if(email.text.trim().isEmpty || email.text.trim()==null ){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              backgroundColor: Colors.blueAccent,
              content: Center(child: Text("Email is empty!!",style: TextStyle(color: Colors.white)))
          )
      );
    }
    if(EmailValidator.validate(email.text.toString())!=true){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              backgroundColor: Colors.blueAccent,
              content: Center(child: Text("Please enter valid Email",style: TextStyle(color: Colors.white)))
          )
      );
    }
    if(password.text.trim().isEmpty || password.text.trim()==null ){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              backgroundColor: Colors.blueAccent,
              content: Center(child: Text("Password is empty!!",style: TextStyle(color: Colors.white)))
          )
      );
    }
    if(confirm_password.text.trim().isEmpty || confirm_password.text.trim()==null ){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              backgroundColor: Colors.blueAccent,
              content: Center(child: Text("Confirm Password is empty!!",style: TextStyle(color: Colors.white)))
          )
      );
    }
    if(confirm_password.text.toString()!=password.text.toString()){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              backgroundColor: Colors.blueAccent,
              content: Center(child: Text("Please check the Password",style: TextStyle(color: Colors.white)))
          )
      );
    }
  }
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: globalKey,
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Signin",style:Theme.of(context).textTheme.headline1!,),
                textfieldwithouticon(
                  hinttext: "FirstName",
                  obb: false,
                  controller: firstname,
                ),
                textfieldwithouticon(
                  hinttext: "LastName",
                  obb: false,
                  controller: lastname,
                ),
                textfieldwithouticon(
                  hinttext: "Email",
                  obb: false,
                  controller: email,
                ),
                textfieldwithouticon(
                  hinttext: "Password",
                  obb:true,
                  controller: password,
                ),
                textfieldwithouticon(
                  hinttext: "Confirm Password",
                  obb:true,
                  controller: confirm_password,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 100,
                      child: ElevatedButton(onPressed: (){
                        Navigator.pop(context);
                      },
                          child: Text("Cancal"),
                        style: ElevatedButton.styleFrom(
                          shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(21),
                          ),
                          backgroundColor: Colors.grey
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: ElevatedButton(
                        onPressed: (){
                          //validation();
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>loginpage()));
                        },
                        child: Text("Register"),
                        style: ElevatedButton.styleFrom(
                            shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(21),
                            ),
                        ),),
                    ),
                  ],
                )
              ],
            ),
          )
      ),
    );
  }
}