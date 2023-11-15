import 'package:flutter/material.dart';

import '../widget/textfield.dart';
class AddressEntryPage extends StatefulWidget {
  @override
  State<AddressEntryPage> createState() => _AddressEntryPageState();
}

class _AddressEntryPageState extends State<AddressEntryPage> {
  TextEditingController streetController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController stateController = TextEditingController();

  TextEditingController pinCodeController = TextEditingController();

  TextEditingController phoneController = TextEditingController();
  List elementlist=[0,1,2,3,4];
  List hintlist=['Street Address','City','State','Pin Code','Phone Number'];
  //List<TextEditingController> controllerlist=[streetController,cityController,stateController,pinCodeController,phoneController];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter Address',style: TextStyle(color: Colors.white),),
        iconTheme: IconThemeData(
          color: Colors.white
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textfieldwithouticon(hinttext: hintlist[0], obb: false, controller: streetController,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textfieldwithouticon(
                hinttext: hintlist[01],
                obb: false,
                controller: cityController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textfieldwithouticon(
                hinttext: hintlist[2],
                obb: false,
                controller: stateController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textfieldwithouticon(
                hinttext: hintlist[3],
                obb: false,
                controller: pinCodeController,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textfieldwithouticon(
                hinttext: hintlist[4],
                obb: false,
                controller: phoneController,),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    final streetAddress = streetController.text;
                    final city = cityController.text;
                    final state = stateController.text;
                    final pinCode = pinCodeController.text;
                    final phoneNumber = phoneController.text;
                    // You can do something with the entered address data here,
                    // such as saving it to a database or using it in your app.
                    print('Street Address: $streetAddress');
                    print('City: $city');
                    print('State: $state');
                    print('Pin Code: $pinCode');
                    print('Phone Number: $phoneNumber');
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            backgroundColor: Colors.orange,
                            content: Center(
                                child: Text("Your Address has been saved",style: TextStyle(color: Colors.white),)
                            )
                        )
                    );
                  },
                  child: Text('Save Address',style: TextStyle(color: Colors.white),),
                ),
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Back",style: TextStyle(color: Colors.white),)),
              ],
            ),
          ]
           /*<Widget>[
            streetController,cityController,stateController,pinCodeController,phoneController
            TextField(
              controller: streetController,
              decoration: InputDecoration(labelText: 'Street Address'),
            ),
            TextField(
              controller: cityController,
              decoration: InputDecoration(labelText: 'City'),
            ),
            TextField(
              controller: stateController,
              decoration: InputDecoration(labelText: 'State'),
            ),
            TextField(
              controller: pinCodeController,
              decoration: InputDecoration(labelText: 'Pin Code'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(labelText: 'Phone Number'),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    final streetAddress = streetController.text;
                    final city = cityController.text;
                    final state = stateController.text;
                    final pinCode = pinCodeController.text;
                    final phoneNumber = phoneController.text;

                    // You can do something with the entered address data here,
                    // such as saving it to a database or using it in your app.
                    print('Street Address: $streetAddress');
                    print('City: $city');
                    print('State: $state');
                    print('Pin Code: $pinCode');
                    print('Phone Number: $phoneNumber');
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.orange,
                            content: Center(
                                child: Text("Your Address has been saved",style: TextStyle(color: Colors.white),)
                            )
                        )
                    );
                  },
                  child: Text('Save Address',style: TextStyle(color: Colors.white),),
                ),
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Back",style: TextStyle(color: Colors.white),)),
              ],
            ),
          ],*/
        ),
      ),
    );
  }
}