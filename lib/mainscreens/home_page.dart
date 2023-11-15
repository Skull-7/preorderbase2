import 'package:flutter/material.dart';
import 'package:preorderbase2/mainscreens/userprofile.dart';

import '../screens/main_page.dart';
class home extends StatelessWidget{
  TextEditingController search=TextEditingController();
  var food=[
    "PIZZA",
    "BURGER",
    "DESSERT",
    "CHINISE",
    "THALI",
    "SHAKES"
  ];
  var food_icon=[
    "assets/images/pizza_icon.jpg",
    "assets/images/Burger_icon.jpg",
    "assets/images/dessert.jpg",
    "assets/images/chinise_icon.jpg",
    "assets/images/thali.jpg",
    "assets/images/Shacks_icon.jpg"
  ];
  var food_list_size=[
    0,
    1,
    2,
    3,
    4,
    5
  ];
  var img_list=[
    "assets/images/img.png",
    "assets/images/img_1.png"
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.white,
                    height: 60,
                    child: TextField(
                      controller: search,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search,color: Colors.orange,),
                        hintText: "Search",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                        ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                          )
                      ),
                    ),
                  ),
                    ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: img_list.map((e) => Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                          child: Image.asset(
                            e,
                            fit: BoxFit.cover,),
                        ),
                      ),).toList()/*[
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                          child: Image.asset(
                            "assets/images/img.png",
                            fit: BoxFit.cover,),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                          child: Image.asset(
                            "assets/images/img_1.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ]*/,
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    child: Wrap(
                      children: food_list_size.map((e) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:InkWell(
                          onTap: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>mainpage(curr: page2,)));
                          },
                          child: Container(
                            width: 100,
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  food_icon[e],
                                  height: 20,
                                  width: 20,),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(food[e],style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),),
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.orange
                              )
                            ),
                          ),
                        ),
                      )).toList(),
                    )
                    /*GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            //mainAxisExtent: 6,
                          crossAxisSpacing: 4,
                          mainAxisSpacing: 4,
                          crossAxisCount: 3
                        ),
                        itemBuilder: (context,index){
                          return Container(
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(21)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    food_icon[index],
                                    height: 20,
                                    width: 20,),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(food[index]),
                                ],
                              ),
                            ),
                          );
                        },
                        itemCount: food.length,),*/
                  )
                ],
              ),
              Image.asset("assets/images/preorderbase_info.jpg")
            ],
          ),
        ),
      ),
    );
  }
}