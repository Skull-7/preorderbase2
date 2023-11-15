import 'package:flutter/material.dart';

class terms_and_condition_page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Terms & Conditions",style: TextStyle(color: Colors.white),),
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
                "By using our food delivery app, you agree to:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text("• Order accurately and responsibly."),
              Text("• Make timely payments."),
              Text("• Accept estimated delivery times."),
              SizedBox(height: 16),
              Text("Cancellation and refund policies are in place."),
              SizedBox(height: 16),
              Text("User data is collected as per our privacy policy."),
              SizedBox(height: 16),
              Text("Prohibited conduct includes fraudulent activities."),
              SizedBox(height: 16),
              Text("Intellectual property rights are respected."),
              SizedBox(height: 16),
              Text("We are not liable for issues with restaurants or delivery partners."),
              SizedBox(height: 16),
              Text("Feedback is encouraged within guidelines."),
              SizedBox(height: 16),
              Text("Account termination can occur for violations."),
              SizedBox(height: 16),
              Text("We reserve the right to update terms."),
              SizedBox(height: 16),
              Text("These terms apply to all users."),
              SizedBox(height: 16),
              Text("For a detailed understanding, please read the complete terms and conditions."),
            ],
          ),
        ),
      ),
    );
  }
}