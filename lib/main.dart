import 'package:flutter/material.dart';

import 'package:preorderbase2/mainscreens/menu_page.dart';
import 'package:preorderbase2/mainscreens/order_placed_page.dart';
import 'package:preorderbase2/mainscreens/userprofile.dart';
import 'package:preorderbase2/screens/login_and_regestration_with_shared.dart';
import 'package:preorderbase2/screens/login_page.dart';
import 'package:preorderbase2/screens/signin_page.dart';
import 'package:preorderbase2/screens/splash.dart';
import 'package:preorderbase2/screens/welcome_page.dart';
import 'package:preorderbase2/screens/main_page.dart';
import 'package:preorderbase2/user_page_options/user_profiler.dart';
//import 'package:firebase_core/firebase_core.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PreOrderBase',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
          headline2: TextStyle(
            color: Colors.white
          )
        )
      ),
      /*
      initialRoute: '/splash',
      routes: {
        '/splash':(context) =>splash(),
        '/welcome page':(context)=> welcomepage(),
        '/login page':(context)=> LoginPage(),
        '/registration page':(context)=> RegistrationPage(),
        '/main page':(context)=> mainpage(),
        '/home page':(context)=> homepage(),
      },
      */
      debugShowCheckedModeBanner: false,
      home:splash(),//RestaurantDetailScreen(restaurantName: "PreOrderBase",) ,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
