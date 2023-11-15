import 'package:flutter/material.dart';

import 'order_placed_page.dart';

class paymentoptions_page extends StatelessWidget{
  final List paymentoptions=[
    "assets/images/google-pay.png",
    "assets/images/payment.png",
    "assets/images/paytm.png",
    "assets/images/phonepe.png",
    "assets/images/netbanking.png",
    "assets/images/card.png",
    "assets/images/cash-on-delivery.png",
  ];
  final List paymentoptionsnames=[
    "Google Pay",
    "Amazon Pay",
    "Paytm",
    "PhonePe",
    "Net Banking",
    "Card",
    "Cash On Delivery"
  ];
  TimeOfDay? time;

  paymentoptions_page({this.time});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment",style: TextStyle(color: Colors.white),),
        iconTheme: IconThemeData(
          color: Colors.white
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white
        ),
        child: ListView.separated(itemBuilder: (context,index) {
          return ListTile(
            leading: Image.asset(paymentoptions[index],scale: 12,),
            title: Text("Pay with ${paymentoptionsnames[index]}"),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>order_placed(time: time,)));
            },
          );
        },
          itemCount: paymentoptionsnames.length,
          separatorBuilder: (context,index) {
            return Divider();
          },
        ),
      ),
    );
  }
}