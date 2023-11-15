import 'package:flutter/material.dart';

class help_and_support extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Customer Support',style: TextStyle(color: Colors.white)),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "At PreOrderBase, we're committed to ensuring you have the best possible experience with our pre-order food delivery service.",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text("If you ever encounter any issues, have questions, or need assistance, our dedicated support team is here to help."),
                SizedBox(height: 16),
                Text(
                  "Contact Us:",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text("Feel free to reach out to our support team through the 'Contact Us' option on our website or app. We value your feedback and are eager to resolve any concerns you may have promptly."),
                SizedBox(height: 16),
                Text(
                  "Frequently Asked Questions (FAQs):",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text("Before reaching out to support, be sure to explore our FAQ section. We've compiled a list of common queries and answers that may address your concerns."),
                SizedBox(height: 16),
                Text(
                  "Customer Feedback:",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text("Your feedback is invaluable to us. Share your thoughts, suggestions, or comments about your experience with our service. We're constantly striving to improve and offer the best possible service."),
                SizedBox(height: 16),
                Text(
                  "Technical Support:",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text("If you encounter technical issues with our website or app, our technical support team is ready to assist you in resolving these problems. Simply reach out, and we'll guide you through any technical challenges."),
                SizedBox(height: 16),
                Text(
                  "Privacy and Security:",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text("The security of your data and privacy is of utmost importance to us. If you have any questions or concerns regarding our privacy and security practices, please don't hesitate to ask."),
                SizedBox(height: 16),
                Text("We are committed to making your pre-order food delivery experience as smooth and enjoyable as possible. Your satisfaction is our priority, and we're here to support you every step of the way. Thank you for choosing PreOrderBase as your preferred food delivery platform."),
              ],
            ),
          ),
        ),
      );
  }
}
