import 'package:flutter/material.dart';
class about_us extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('About Us',style: TextStyle(color: Colors.white),),
          iconTheme: IconThemeData(
            color: Colors.white
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "At PreOrderBase, we are passionate about connecting people with delicious meals they love.",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text("Our journey began with a vision to redefine convenience and flexibility in food delivery."),
                SizedBox(height: 16),
                Text("We understand that hunger doesn't always adhere to a schedule, so we built a platform that allows you to pre-order your favorite meals at any time, from anywhere."),
                SizedBox(height: 16),
                Text("Our mission is to empower you to enjoy the culinary delights of your choice without constraints."),
                SizedBox(height: 16),
                Text("Whether you're planning ahead for a family dinner, a busy day at the office, or a late-night craving, we've got you covered."),
                SizedBox(height: 16),
                Text("We've partnered with a diverse range of local restaurants to offer a menu that caters to all tastes and dietary preferences."),
                SizedBox(height: 16),
                Text("We take pride in our user-friendly interface, making the pre-order process as seamless as possible."),
                SizedBox(height: 16),
                Text("With a few clicks or taps, you can schedule your meal for pickup or delivery, ensuring your food arrives precisely when you want it."),
                SizedBox(height: 16),
                Text("We're committed to providing exceptional service, and our customer support team is ready to assist you whenever you need it."),
                SizedBox(height: 16),
                Text("As a team, we're dedicated to enhancing your dining experience by offering a convenient, reliable, and delightful way to satisfy your culinary desires."),
                SizedBox(height: 16),
                Text("Join us in this exciting journey and discover a world of culinary possibilities with PreOrderBase."),
              ],
            ),
          ),
        ),
      );
  }
}
