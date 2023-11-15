import 'package:flutter/material.dart';
class textfieldwithicon extends StatelessWidget{
  String hinttext;
  IconData? iconData;
  final bool obb;
  final TextEditingController? controller;
  textfieldwithicon({required this.hinttext, this.iconData,required this.obb,required this.controller});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      obscureText: obb,
        decoration: InputDecoration(
          prefixIcon: Icon(iconData),
          label: Text(hinttext),
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
    );
  }
}
class textfieldwithouticon extends StatelessWidget{
  final String hinttext;
  final bool obb;
  final TextEditingController? controller;
  final bool? keyuse;
  textfieldwithouticon({required this.hinttext,required this.obb,required this.controller,this.keyuse});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      controller: controller,
      obscureText: obb,
        keyboardType: keyuse!=null ? TextInputType.phone:TextInputType.name,
        decoration: InputDecoration(
          label: Text(hinttext),
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
    );
  }
}