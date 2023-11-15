import 'package:flutter/material.dart';
import 'package:preorderbase2/screens/main_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../mainscreens/userprofile.dart';
import '../screens/login_and_regestration_with_shared.dart';
import '../widget/textfield.dart';
class User {
  final String name;
  final String email;
  final String imageUrl;
  final String phoneNumber;
  final String address;
  final String bio;

  User({
    required this.name,
    required this.email,
    required this.imageUrl,
    required this.phoneNumber,
    required this.address,
    required this.bio,
  });
}

class mall extends StatefulWidget {
  @override
  State<mall> createState() => _mallState();
}

class _mallState extends State<mall> {
  @override
  void initState() {
    // TODO: implement initState
    getval();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange
      ),
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(user: User(
        name: 'John Doe',
        email: 'johndoe@example.com',
        imageUrl: 'assets/images/profile_picture.jpg',
        phoneNumber: '+1 123-456-7890',
        address: '123 Main St, City, Country',
        bio: 'Food lover and explorer!',
      )),
    );
  }
  void getval() async{
    final SharedPreferences prefs=await SharedPreferences.getInstance();
    var emailval=prefs.getString('abir77@gmail.com');
  }
}
class ProfileScreen extends StatelessWidget {
  final User user;
  final TextEditingController username=TextEditingController(text: 'John Doe');
  final TextEditingController useremail=TextEditingController(text: 'johndoe@example.com');
  final TextEditingController userphoneno=TextEditingController(text: '+1 123-456-7890');
  final TextEditingController useraddress=TextEditingController(text: '123 Main St, City, Country');
  final TextEditingController userbio=TextEditingController(text: 'Food lover and explorer!');
  ProfileScreen({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.orange,
      ),
      backgroundColor: Colors.orange,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(21)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      decoration: BoxDecoration(
                          //color: Colors.orange,
                          borderRadius: BorderRadius.circular(21),
                        image: DecorationImage(
                          image: AssetImage("assets/images/Untitled.png"),
                          fit: BoxFit.fill,
                        )
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 40,
                            left: 204,
                            child: CircleAvatar(
                              foregroundImage: AssetImage("assets/images/non_profile.jpg",),
                              minRadius: 50,
                            ),
                          ),
                          Positioned(
                            top: 50,
                              left: 40,
                              child: Text(user.name,style: TextStyle(fontSize: 20),)
                          ),
                          Positioned(
                              top: 80,
                              left: 40,
                              child: Text(user.email,style: TextStyle(fontSize: 15),)
                          ),
                          Positioned(
                              top: 140,
                              left: 40,
                              child: Text(user.phoneNumber,style: TextStyle(fontSize: 10))
                          ),
                          Positioned(
                              top: 150,
                              left: 40,
                              child: Text(user.address,style: TextStyle(fontSize: 10))
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      //color: Colors.orange,
                        borderRadius: BorderRadius.circular(21),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          textfieldwithouticon(hinttext: 'Name', obb: false, controller: username,),
                          SizedBox(height: 8,),
                          textfieldwithouticon(hinttext: 'Email', obb: false, controller: useremail,),
                          SizedBox(height: 8,),
                          textfieldwithouticon(hinttext: 'Phone No', obb: false, controller: userphoneno, keyuse: true,),
                          SizedBox(height: 8,),
                          textfieldwithouticon(hinttext: 'Address', obb: false, controller: useraddress,),
                          SizedBox(height: 8,),
                          textfieldwithouticon(hinttext: 'Bio', obb: false, controller: userbio,),
                          SizedBox(height: 8,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(onPressed: (){
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Center(child: Text("Your Details Have been saved",style: TextStyle(color: Colors.white),)),backgroundColor: Colors.orange,));
                              }, child: Text("Save",style: TextStyle(color: Colors.white),)),
                              ElevatedButton(onPressed: (){
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>mainpage()));
                               // Navigator.pushReplacement(context, MaterialPageRoute(builder: C))
                              }, child: Text("Back",style: TextStyle(color: Colors.white)))
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      )
      /*Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/non-profile.jpg"),
                radius: 50,
              ),
              SizedBox(height: 16),
              Text(
                user.name,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                user.email,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 24),
              Text(
                'Phone Number:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                user.phoneNumber,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Address:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                user.address,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'About Me:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                user.bio,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>));
                },
                child: Text('Edit Profile'),
              ),
            ],
          ),
        ),
      )*/,
    );
  }
}
