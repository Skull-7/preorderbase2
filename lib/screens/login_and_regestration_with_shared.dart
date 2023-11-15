import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:preorderbase2/screens/main_page.dart';
import 'package:preorderbase2/screens/welcome_page.dart';
import 'package:preorderbase2/widget/textfield.dart';
import 'package:shared_preferences/shared_preferences.dart';
class User {
  final String firstName;
  final String lastName;
  final String email;
  User(this.firstName, this.lastName, this.email);
}
class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}
String ? mail;
class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool logobb=true;
  Icon redeye=Icon(Icons.visibility);
  int count=0;
  void _login(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String email = _emailController.text;
    final String password = _passwordController.text;
    // Replace with your own authentication logic.
    // Check if email and password match an existing user.
    if(email.isEmpty || email.trim()==null && password.trim().isEmpty || password.trim()==null){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              backgroundColor: Colors.orange,
              content: Center(child: Text("All fields are empty!!",style: TextStyle(color: Colors.white)))
          )
      );
    }
    else if(email.isEmpty || email.trim()==null ){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              backgroundColor: Colors.orange,
              content: Center(child: Text("Email is empty!!",style: TextStyle(color: Colors.white)))
          )
      );
    }
    else if(password.trim().isEmpty || password.trim()==null ){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              backgroundColor: Colors.orange,
              content: Center(child: Text("Password is empty!!",style: TextStyle(color: Colors.white)))
          )
      );
    }
    else if (prefs.containsKey(email) && prefs.getString(email) == password) {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context){
        return mainpage(curr: 0,);
      }), (r){
        return false;
      });
      /*Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => mainpage(),
        ),
      );*/
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Login Failed'),
          content: Text('Invalid email or password.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page',style: TextStyle(color: Colors.white),),
        iconTheme: IconThemeData(
          color: Colors.white
        ),
      ),
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
                TextField(
                    controller: _emailController,
                    obscureText: false,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle),
                      label: Text("Username"),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                            width: 2,
                            color: Colors.orange
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            width: 1,
                          )
                      ),
                    )
                ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                        controller: _passwordController,
                        obscureText: logobb,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline),
                          suffixIcon: IconButton(icon: redeye,onPressed: () {
                            if(count%2==0){
                              logobb=true;
                              redeye=Icon(Icons.visibility);
                              count++;
                            }
                            else{
                              logobb=false;
                              redeye=Icon(Icons.visibility_off);
                              count++;
                            }
                            setState(() {

                            });
                          },),
                          label: Text("Password"),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                width: 2,
                                color: Colors.orange
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                width: 1,
                              )
                          ),
                        )
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 45,
              child: ElevatedButton(onPressed: (){
                _login(context);
                //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>mainpage()));
              },
                  child: Text("Log in",style: TextStyle(color: Colors.white),),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationPage()));
                }, child:Text("Register Now"))
              ],
            )
          ],
        ),
      ),/*Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () => _login(context),
              child: Text('Login'),
            ),
            SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegistrationPage(),
                  ),
                );
              },
              child: Text('Don\'t have an account? Register here.'),
            ),
          ],
        ),
      ),*/
    );
  }
}
class RegistrationPage extends StatefulWidget {
  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confermpasswordController = TextEditingController();

  void _register(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String firstName = _firstNameController.text;
    final String lastName = _lastNameController.text;
    final String email = _emailController.text;
    final String password = _passwordController.text;
    final String confirmpassword=_confermpasswordController.text;

    // Replace with your own registration logic.
    // Check if the email is not already registered.
    if(firstName.isEmpty || firstName.trim()==null ){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              backgroundColor: Colors.orange,
              content: Center(child: Text("Firstname is empty!!",style: TextStyle(color: Colors.white)))
          )
      );
    }
    else if(lastName.trim().isEmpty || lastName.trim()==null ){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              backgroundColor: Colors.orange,
              content: Center(child: Text("Lastname is empty!!",style: TextStyle(color: Colors.white)))
          )
      );
    }
    else if(email.trim().isEmpty || email.trim()==null ){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              backgroundColor: Colors.orange,
              content: Center(child: Text("Email is empty!!",style: TextStyle(color: Colors.white)))
          )
      );
    }
    else if(EmailValidator.validate(email.toString())!=true){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              backgroundColor: Colors.orange,
              content: Center(child: Text("Please enter valid Email",style: TextStyle(color: Colors.white)))
          )
      );
    }
    else if(password.trim().isEmpty || password.trim()==null ){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              backgroundColor: Colors.orange,
              content: Center(child: Text("Password is empty!!",style: TextStyle(color: Colors.white)))
          )
      );
    }
    else if(confirmpassword.trim().isEmpty || confirmpassword.trim()==null ){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              backgroundColor: Colors.orange,
              content: Center(child: Text("Confirm Password is empty!!",style: TextStyle(color: Colors.white)))
          )
      );
    }
    else if (!prefs.containsKey(email)) {
      prefs.setString(email, password);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.orange,
          content: Center(child: Text('Registration successful. You can now log in.',style: TextStyle(color: Colors.white),)),
        ),
      );
    }
    else if(password!=confirmpassword){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              backgroundColor: Colors.orange,
              content: Center(child: Text("Please check the Password",style: TextStyle(color: Colors.white)))
          )
      );
      /*showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Registration Failed'),
          content: Text('Please Check the Password'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        ),
      );*/
    }
    else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Registration Failed'),
          content: Text('Email already registered.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }
  bool passwordobb=true;
  int passwordcount=0;
  Icon paswordico=Icon(Icons.visibility);
  bool conpasswordobb=true;
  int conpaswordcount=0;
  Icon conpaswordico=Icon(Icons.visibility);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration Page',style: TextStyle(color: Colors.white),),
        iconTheme: IconThemeData(
          color: Colors.white
        ),
      ),
      body:SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Signin",style:Theme.of(context).textTheme.headline1!,),
                TextField(
                    controller: _firstNameController,
                    obscureText: false,
                    decoration: InputDecoration(
                      label: Text("FirstName"),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                            width: 2,
                            color: Colors.orange
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            width: 1,
                          )
                      ),
                    )
                ),
                TextField(
                    controller: _lastNameController,
                    obscureText: false,
                    decoration: InputDecoration(
                      label: Text("LastName"),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                            width: 2,
                            color: Colors.orange
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            width: 1,
                          )
                      ),
                    )
                ),
                TextField(
                    controller: _emailController,
                    obscureText: false,
                    decoration: InputDecoration(
                      label: Text("Email"),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                            width: 2,
                            color: Colors.orange
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            width: 1,
                          )
                      ),
                    )
                ),
                TextField(
                    controller: _passwordController,
                    obscureText: passwordobb,
                    decoration: InputDecoration(
                      label: Text("Password"),
                      suffixIcon: IconButton(
                        icon: paswordico,
                        onPressed: () {
                          if(passwordcount%2==0){
                            passwordobb=true;
                            paswordico=Icon(Icons.visibility);
                            passwordcount++;
                            setState(() {

                            });
                          }else{
                            passwordobb=false;
                            paswordico=Icon(Icons.visibility_off);
                            passwordcount++;
                            setState(() {

                            });
                          }
                        },),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                            width: 2,
                            color: Colors.orange
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            width: 1,
                          )
                      ),
                    )
                ),
                TextField(
                    controller: _confermpasswordController,
                    obscureText: conpasswordobb,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: conpaswordico,
                        onPressed: () {
                          if(conpaswordcount%2==0){
                            conpasswordobb=true;
                            conpaswordico=Icon(Icons.visibility);
                            conpaswordcount++;
                            setState(() {

                            });
                          }else{
                            conpasswordobb=false;
                            conpaswordico=Icon(Icons.visibility_off);
                            conpaswordcount++;
                            setState(() {

                            });
                          }
                        },),
                      label: Text("Confirm Password"),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                            width: 2,
                            color: Colors.orange
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            width: 1,
                          )
                      ),
                    )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 100,
                      child: ElevatedButton(onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>welcomepage()));
                      },
                        child: Text("Cancal",style: TextStyle(color: Colors.white)),
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
                          _register(context);
                          //validation();
                          //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                        },
                        child: Text("Register",style: TextStyle(color: Colors.white)),
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
      ), /*Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _firstNameController,
              decoration: InputDecoration(labelText: 'First Name'),
            ),
            TextField(
              controller: _lastNameController,
              decoration: InputDecoration(labelText: 'Last Name'),
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () => _register(context),
              child: Text('Register'),
            ),
          ],*/
        );
  }
}