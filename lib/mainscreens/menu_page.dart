import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:preorderbase2/mainscreens/paymentoptions.dart';
import 'package:preorderbase2/screens/checkout.dart';
import 'package:flutter/material.dart';

import '../screens/location_screen.dart';
class FoodItem {
  final String name;
  final String image;
  final double price;
  final String description;
  //final Color color;
  num count;

  FoodItem({
    required this.name,
    required this.image,
    required this.price,
    required this.description,
    //required this.color,
    required this.count,
  });
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Delivery App'),
      ),
      body: ListView(
        children: [
          RestaurantCard(name: 'Restaurant 1'),
          RestaurantCard(name: 'Restaurant 2'),
          // Add more RestaurantCard widgets
        ],
      ),
    );
  }
}

class RestaurantCard extends StatelessWidget {
  final String name;

  RestaurantCard({required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset('assets/restaurant_image.png'),
        title: Text(name),
        subtitle: Text('Open now'),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RestaurantDetailScreen(restaurantName: name),
            ),
          );
        },
      ),
    );
  }
}

class RestaurantDetailScreen extends StatefulWidget {
  final String restaurantName;

  RestaurantDetailScreen({required this.restaurantName});
  final List<FoodItem> foodItems = [
    FoodItem(
      name: 'Burger',
      image: 'Burgur.jpg',
      price: 75.0,
      description: 'Delicious burger with all the fixings.',
      //color: Colors.red,
      count: 0,
    ),
    FoodItem(
      name: 'Pizza',
      image: 'pizza.jpg',
      price: 150.0,
      description: 'Freshly baked pizza with your choice of toppings.',
      //color: Colors.blue,
      count: 0,
    ),
    FoodItem(
      name: 'North Indian Thali',
      image: 'Thali_img.jpg',
      price: 120.0,
      description: 'A North Indian thali is a diverse and flavorful platter featuring an array of regional dishes, often including curry, rice, bread, and assorted accompaniments.',
      //color: Colors.green,
      count: 0,
    ),
    FoodItem(
      name: 'Shacks',
      image: 'Shake.jpg',
      price: 60.0,
      description: 'Shakes are creamy, chilled beverages made by blending milk, ice cream, and flavorings, offering a refreshing and indulgent treat.',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Bannana Milkshake',
      image: 'bannana_milkshake.jpg',
      price: 100.0,
      description: 'A banana milkshake is a creamy and delicious beverage made by blending ripe bananas with milk and sweeteners, often with the addition of ice cream or yogurt for extra richness.',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Cakes',
      image: 'sweets.jpg',
      price: 200.0,
      description: 'Cakes are sweet, baked desserts often adorned with layers, frosting, and various flavors, enjoyed for celebrations and special occasions',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Chesse and Tomato Pizza',
      image: 'Chesse_and_tomao_pizza.jpg',
      price: 250.0,
      description: 'Cheese and tomato pizza is a classic Italian dish featuring a thin crust topped with tomato sauce and melted cheese, typically mozzarella, resulting in a savory and cheesy delight.',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'ButterScotch Cakes',
      image: 'butterscotch_cake.jpg',
      price: 220.0,
      description: 'Butterscotch cake is a delectable dessert made with layers of moist, buttery cake infused with butterscotch flavor, often complemented by caramel or butterscotch frosting, creating a rich and sweet treat.',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Chole kulcha',
      image: 'Cholle kulcha.jpg',
      price: 120.0,
      description: 'Chole kulcha is a North Indian dish featuring spiced chickpea curry served with soft, leavened bread.',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Cold Coffee',
      image: 'Cold_coffee.jpg',
      price: 100.0,
      description: 'Cold coffee is a refreshing beverage made from chilled coffee, milk, sugar, and ice, often topped with whipped cream or flavored syrups for added indulgence.',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'French Fries',
      image: 'fires.jpg',
      price: 160.0,
      description: 'French fries are thin strips of deep-fried or oven-baked potatoes, enjoyed as a popular and crispy snack or side dish worldwide.',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Mc Flurry',
      image: 'ice_cream.jpg',
      price: 109.0,
      description: "A McFlurry is a McDonald's dessert that combines soft-serve ice cream with various toppings or mix-ins for a creamy and indulgent treat.",
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Dry Fruit Chocalate cookies',
      image: 'dry_fruit_cookies.jpg',
      price: 190.0,
      description: 'Dry fruit chocolate cookies are sweet treats infused with chocolate and studded with nuts and dried fruits.',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Gourmet Chesse Burger',
      image: 'Gorma_chesse_burgar.jpg',
      price: 250.0,
      description: 'A gourmet cheeseburger elevates the classic with premium ingredients, artisanal cheese, and gourmet toppings for a decadent burger experience.',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Gujarati Thali',
      image: 'Gujarati_thali.jpg',
      price: 140.0,
      description: 'A Gujarati thali is a traditional Indian meal consisting of a variety of vegetarian dishes, including dal (lentil curry), sabzi (vegetable curry), kadhi (yogurt-based curry), rice, roti (flatbread), pickles, chutneys, and sweets, offering a diverse and balanced culinary experience.',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Mc Chicken',
      image: 'Mc_chicken.jpg',
      price: 200.0,
      description: "The McChicken is a popular sandwich offered by McDonald's, featuring a breaded and seasoned chicken patty served in a bun with mayonnaise and lettuce, creating a simple and satisfying fast-food option.",
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Neopolition Style Pizza',
      image: 'Neopolition_style_pizza.jpg',
      price: 450.0,
      description: 'Neapolitan-style pizza is a classic Italian pizza known for its thin crust, minimal toppings, and wood-fired cooking, offering an authentic and flavorful pizza experience.',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Panner Delight',
      image: 'panner_delight_pizza.jpg',
      price: 300.0,
      description: 'Paneer delight is a delectable Indian dish made with soft and creamy paneer (cottage cheese) combined with a flavorful and often spicy sauce or gravy, providing a rich and satisfying vegetarian meal.',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Panner Thali',
      image: 'panner_thali.jpg',
      price: 145.0,
      description: 'A paneer thali is a traditional Indian meal platter showcasing a variety of dishes with paneer (cottage cheese) at the heart of the ensemble, providing a complete and flavorful dining experience.',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Pasta',
      image: 'pasta.jpg',
      price: 80.0,
      description: 'Spaghetti with marinara sauce and garlic bread.',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Salad',
      image: 'Salad.jpg',
      price: 100.0,
      description: 'Fresh garden salad with your choice of dressing.',
      //color: Colors.purple,
      count: 0,
    ),
    FoodItem(
      name: 'Cholle bhatura',
      image: 'Cholle_bhatura.jpg',
      price: 200.0,
      description: 'Chole Bhature is a popular North Indian dish consisting of spicy chickpea curry (chole) served with deep-fried bread (bhature).',
      //color: Colors.teal,
      count:0,
    ),
  ];
  final List<FoodItem> cartItems = [];

  @override
  _RestaurantDetailScreenState createState() => _RestaurantDetailScreenState();
}

class _RestaurantDetailScreenState extends State<RestaurantDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.restaurantName,style: TextStyle(color: Colors.white),),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Text('Menu items',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,),),
          Expanded(
            child: ListView.builder(
              itemCount: widget.foodItems.length,
              itemBuilder: (context, index) {
                return FoodItemCard(
                  item: widget.foodItems[index],
                  onAddToCart: () {
                    setState(() {
                      // Check if the item is not already in the cart
                      if (widget.foodItems[index].count > 0 && !widget.cartItems.contains(widget.foodItems[index])) {
                        widget.cartItems.add(widget.foodItems[index]);
                      }
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen(cartItems: widget.cartItems)));
        },
        child: Icon(Icons.shopping_cart,color: Colors.white,),
      ),
    );
  }
}

class FoodItemCard extends StatefulWidget {
  final FoodItem item;
  final VoidCallback onAddToCart;

  FoodItemCard({required this.item, required this.onAddToCart});

  @override
  _FoodItemCardState createState() => _FoodItemCardState();
}

class _FoodItemCardState extends State<FoodItemCard> {
  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        //color: Colors.orange,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              width: 2,
              color: Colors.orange
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/${widget.item.image}',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 150,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.item.name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.item.description),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Price: ₹${widget.item.price}'),
          ),
          Row(
            children: [
              InkWell(
                onTap: (){
                  if(widget.item.count==0){
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            backgroundColor: Colors.orange,
                            content: Center(child: Text("Please add some items!",style: TextStyle(color: Colors.white),))
                        )
                    );
                  }
                  else{
                    setState(() {
                      widget.item.count--;
                      widget.onAddToCart();
                    });}
                },
                child: Container(
                  width: 40,
                  height: 40,
                  child: Icon(Icons.remove),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: 1
                      )
                  ),
                ),
              ),
              Container(
                width: 40,
                height: 40,
                child: Center(child: Text(widget.item.count.toString())),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        width: 1
                    )
                ),),
              InkWell(
                onTap: (){
                  setState(() {
                    widget.item.count++;
                    widget.onAddToCart();
                  });
                },
                child: Container(
                  width: 40,
                  height: 40,
                  child: Icon(Icons.add),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: 1
                      )
                  ),
                ),
              )
            ],
          )
        ],
      ),);/*Card(
      child: ListTile(
        leading: Icon(Icons.fastfood),
        title: Text(widget.item.name),
        subtitle: Text('\$${widget.item.price.toStringAsFixed(2)}'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Quantity: ${widget.item.count}'),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  widget.item.count++;
                  widget.onAddToCart();
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: () {
                if (widget.item.count > 0) {
                  setState(() {
                    widget.item.count--;
                    widget.onAddToCart();
                  });
                }
              },
            ),
          ],
        ),
      ),
    );*/
  }
}

class CartScreen extends StatefulWidget {
  final List<FoodItem> cartItems;

  CartScreen({required this.cartItems});

  @override
  _CartScreenState createState() => _CartScreenState();
}
TimeOfDay? time;
class _CartScreenState extends State<CartScreen> {
  double get totalCost {
    return widget.cartItems.fold(0, (sum, item) => sum + (item.price * item.count));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart',style: TextStyle(color: Colors.white)),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.white,
      body: totalCost==0?Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                  width: 400,
                  child: Image.asset("assets/images/empty_cart.png")),
              Text("Your Cart is empty!"),
            ],
          ),
        ),
      ) : Column(
        children: [
          Text('Cart items:'),
          Expanded(
            child: ListView.builder(
              itemCount: widget.cartItems.length,
              itemBuilder: (context, index) {
                return FoodCartItem(item: widget.cartItems[index]);
              },
            ),
          ),
          Text('Total: \₹${totalCost.toStringAsFixed(2)}'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CheckoutScreen(cartItems: widget.cartItems),
                    ),
                  );
                },
                child: Text('Proceed to Checkout',style: TextStyle(color: Colors.white),),
              ),
              ElevatedButton(
                onPressed: () async{
                  time= await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                      initialEntryMode: TimePickerEntryMode.dialOnly
                  );
                  if(time!=null){
                    print("Time = $time");
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CheckoutScreen(cartItems: widget.cartItems,time: time,),
                    ),
                  );
                },
                child: Text('Pre-Order Your Food',style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FoodCartItem extends StatelessWidget {
  final FoodItem item;

  FoodCartItem({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Container(
            width: 40,
            height: 40,
            child: Image.asset("assets/images/${item.image}")),
        title: Text(item.name),
        subtitle: Text('Price: \₹${item.price.toStringAsFixed(2)} | Quantity: ${item.count}'),
      ),
    );
  }
}

class CheckoutScreen extends StatelessWidget {
  final List<FoodItem> cartItems;
  TimeOfDay? time;
  CheckoutScreen({required this.cartItems,this.time});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Review your order',style: TextStyle(color: Colors.white),),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>AddressEntryPage()));
          }, icon: Icon(Icons.location_on)),
          Text("   "),
        ],
      ),
      backgroundColor: Colors.white,
      body: SizedBox.expand(
        child: Stack(
          children: [
            Container(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: cartItems.map((e) => FoodCartItem(item: e)).toList(),/*[
                    ListView.builder(
                      itemCount: cartItems.length,
                      itemBuilder: (context, index) {
                        return FoodCartItem(item: cartItems[index]);
                      },
                    ),
                  ],*/
                ),
              ),
            ),
            /*Expanded(
              flex: 7,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
                ),
                child: ListView.separated(itemBuilder: (context,index) {
                  return ListTile(
                    leading: Image.asset(paymentoptions[index],scale: 12,),
                    title: Text("Pay with ${paymentoptionsnames[index]}"),
                    trailing: Icon(Icons.arrow_forward),
                  );
                },
                itemCount: paymentoptionsnames.length,
                  separatorBuilder: (context,index) {
                    return Divider();
                  },
                ),
              ),
            ),*/
            Positioned(
              left: 128,
              bottom: 0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>paymentoptions_page(time: time,)));
                  // Implement the logic for processing the order here
                },
                child: Text('Place Order',style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
      /*bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          width: 100,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>paymentoptions_page(time: time,)));
              // Implement the logic for processing the order here
            },
            child: Text('Place Order',style: TextStyle(color: Colors.white)),
          ),
        ),
      ),*/
    );
  }
}
/*class menu_page extends StatefulWidget{
  @override
  State<menu_page> createState() => _menu_pageState();
}
class _menu_pageState extends State<menu_page> {
  final List<FoodItem> foodItems = [
    FoodItem(
      name: 'Burger',
      image: 'Burgur.jpg',
      price: '₹75',
      description: 'Delicious burger with all the fixings.',
      //color: Colors.red,
      count: 0,
    ),
    FoodItem(
      name: 'Pizza',
      image: 'pizza.jpg',
      price: '₹150',
      description: 'Freshly baked pizza with your choice of toppings.',
      //color: Colors.blue,
      count: 0,
    ),
    FoodItem(
      name: 'North Indian Thali',
      image: 'Thali_img.jpg',
      price: '₹120',
      description: 'A North Indian thali is a diverse and flavorful platter featuring an array of regional dishes, often including curry, rice, bread, and assorted accompaniments.',
      //color: Colors.green,
      count: 0,
    ),
    FoodItem(
      name: 'Shacks',
      image: 'Shake.jpg',
      price: '₹60',
      description: 'Shakes are creamy, chilled beverages made by blending milk, ice cream, and flavorings, offering a refreshing and indulgent treat.',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Bannana Milkshake',
      image: 'bannana_milkshake.jpg',
      price: '₹100',
      description: 'Cakes are sweet, baked desserts often adorned with layers, frosting, and various flavors, enjoyed for celebrations and special occasions',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Cakes',
      image: 'sweets.jpg',
      price: '₹200',
      description: 'Cakes are sweet, baked desserts often adorned with layers, frosting, and various flavors, enjoyed for celebrations and special occasions',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Cakes',
      image: 'sweets.jpg',
      price: '₹200',
      description: 'Cakes are sweet, baked desserts often adorned with layers, frosting, and various flavors, enjoyed for celebrations and special occasions',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Cakes',
      image: 'sweets.jpg',
      price: '₹200',
      description: 'Cakes are sweet, baked desserts often adorned with layers, frosting, and various flavors, enjoyed for celebrations and special occasions',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Cakes',
      image: 'sweets.jpg',
      price: '₹200',
      description: 'Cakes are sweet, baked desserts often adorned with layers, frosting, and various flavors, enjoyed for celebrations and special occasions',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Cakes',
      image: 'sweets.jpg',
      price: '₹200',
      description: 'Cakes are sweet, baked desserts often adorned with layers, frosting, and various flavors, enjoyed for celebrations and special occasions',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Cakes',
      image: 'sweets.jpg',
      price: '₹200',
      description: 'Cakes are sweet, baked desserts often adorned with layers, frosting, and various flavors, enjoyed for celebrations and special occasions',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Cakes',
      image: 'sweets.jpg',
      price: '₹200',
      description: 'Cakes are sweet, baked desserts often adorned with layers, frosting, and various flavors, enjoyed for celebrations and special occasions',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Cakes',
      image: 'sweets.jpg',
      price: '₹200',
      description: 'Cakes are sweet, baked desserts often adorned with layers, frosting, and various flavors, enjoyed for celebrations and special occasions',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Cakes',
      image: 'sweets.jpg',
      price: '₹200',
      description: 'Cakes are sweet, baked desserts often adorned with layers, frosting, and various flavors, enjoyed for celebrations and special occasions',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Cakes',
      image: 'sweets.jpg',
      price: '₹200',
      description: 'Cakes are sweet, baked desserts often adorned with layers, frosting, and various flavors, enjoyed for celebrations and special occasions',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Cakes',
      image: 'sweets.jpg',
      price: '₹200',
      description: 'Cakes are sweet, baked desserts often adorned with layers, frosting, and various flavors, enjoyed for celebrations and special occasions',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Cakes',
      image: 'sweets.jpg',
      price: '₹200',
      description: 'Cakes are sweet, baked desserts often adorned with layers, frosting, and various flavors, enjoyed for celebrations and special occasions',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Cakes',
      image: 'sweets.jpg',
      price: '₹200',
      description: 'Cakes are sweet, baked desserts often adorned with layers, frosting, and various flavors, enjoyed for celebrations and special occasions',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Pasta',
      image: 'pasta.jpg',
      price: '₹80',
      description: 'Spaghetti with marinara sauce and garlic bread.',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Salad',
      image: 'Salad.jpg',
      price: '₹100',
      description: 'Fresh garden salad with your choice of dressing.',
      //color: Colors.purple,
      count: 0,
    ),
    FoodItem(
      name: 'Cholle bhatura',
      image: 'Cholle_bhatura.jpg',
      price: '₹200',
      description: 'Chole Bhature is a popular North Indian dish consisting of spicy chickpea curry (chole) served with deep-fried bread (bhature).',
      //color: Colors.teal,
      count:0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Food Menu'),
      ),
      body: ListView.builder(
          itemCount: foodItems.length,
          itemBuilder: (context, index) {
            return Container(

              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                //color: Colors.orange,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      width: 2,
                      color: Colors.orange
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/${foodItems[index].image}',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 150,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      foodItems[index].name,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(foodItems[index].description),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Price: ${foodItems[index].price}'),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          if(foodItems[index].count==0){
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    backgroundColor: Colors.orange,
                                    content: Center(child: Text("Please add some items!",style: TextStyle(color: Colors.white),))
                                )
                            );
                          }
                          else{
                            foodItems[index].count-=1;
                            setState(() {

                            });
                          }
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Icon(Icons.remove),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  width: 1
                              )
                          ),
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        child: Center(child: Text(foodItems[index].count.toString())),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                width: 1
                            )
                        ),),
                      InkWell(
                        onTap: (){
                          foodItems[index].count+=1;
                          setState(() {

                          });
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Icon(Icons.add),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  width: 1
                              )
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),); }
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen(cartItems: widget.cartItems)));
        },
        child: Icon(Icons.shopping_cart,color: Colors.white,),

      ),
    );
  }
}

class FoodItem {
  final String name;
  final String image;
  final String price;
  final String description;
  //final Color color;
  num count;

  FoodItem({
    required this.name,
    required this.image,
    required this.price,
    required this.description,
    //required this.color,
    required this.count,
  });
}*/
/*import 'package:flutter/material.dart';
import 'package:preorderbase2/screens/checkout.dart';
class menu_page extends StatefulWidget{
  final List<FoodItem> foodItems = [
    FoodItem(
      name: 'Burger',
      image: 'Burgur.jpg',
      price: '₹75',
      description: 'Delicious burger with all the fixings.',
      //color: Colors.red,
      count: 0,
    ),
    FoodItem(
      name: 'Pizza',
      image: 'pizza.jpg',
      price: '₹150',
      description: 'Freshly baked pizza with your choice of toppings.',
      //color: Colors.blue,
      count: 0,
    ),
    FoodItem(
      name: 'North Indian Thali',
      image: 'Thali_img.jpg',
      price: '₹120',
      description: 'A North Indian thali is a diverse and flavorful platter featuring an array of regional dishes, often including curry, rice, bread, and assorted accompaniments.',
      //color: Colors.green,
      count: 0,
    ),
    FoodItem(
      name: 'Shacks',
      image: 'Shake.jpg',
      price: '₹60',
      description: 'Shakes are creamy, chilled beverages made by blending milk, ice cream, and flavorings, offering a refreshing and indulgent treat.',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Bannana Milkshake',
      image: 'bannana_milkshake.jpg',
      price: '₹100',
      description: 'Cakes are sweet, baked desserts often adorned with layers, frosting, and various flavors, enjoyed for celebrations and special occasions',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Cakes',
      image: 'sweets.jpg',
      price: '₹200',
      description: 'Cakes are sweet, baked desserts often adorned with layers, frosting, and various flavors, enjoyed for celebrations and special occasions',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Cakes',
      image: 'sweets.jpg',
      price: '₹200',
      description: 'Cakes are sweet, baked desserts often adorned with layers, frosting, and various flavors, enjoyed for celebrations and special occasions',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Cakes',
      image: 'sweets.jpg',
      price: '₹200',
      description: 'Cakes are sweet, baked desserts often adorned with layers, frosting, and various flavors, enjoyed for celebrations and special occasions',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Cakes',
      image: 'sweets.jpg',
      price: '₹200',
      description: 'Cakes are sweet, baked desserts often adorned with layers, frosting, and various flavors, enjoyed for celebrations and special occasions',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Cakes',
      image: 'sweets.jpg',
      price: '₹200',
      description: 'Cakes are sweet, baked desserts often adorned with layers, frosting, and various flavors, enjoyed for celebrations and special occasions',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Cakes',
      image: 'sweets.jpg',
      price: '₹200',
      description: 'Cakes are sweet, baked desserts often adorned with layers, frosting, and various flavors, enjoyed for celebrations and special occasions',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Cakes',
      image: 'sweets.jpg',
      price: '₹200',
      description: 'Cakes are sweet, baked desserts often adorned with layers, frosting, and various flavors, enjoyed for celebrations and special occasions',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Cakes',
      image: 'sweets.jpg',
      price: '₹200',
      description: 'Cakes are sweet, baked desserts often adorned with layers, frosting, and various flavors, enjoyed for celebrations and special occasions',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Cakes',
      image: 'sweets.jpg',
      price: '₹200',
      description: 'Cakes are sweet, baked desserts often adorned with layers, frosting, and various flavors, enjoyed for celebrations and special occasions',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Cakes',
      image: 'sweets.jpg',
      price: '₹200',
      description: 'Cakes are sweet, baked desserts often adorned with layers, frosting, and various flavors, enjoyed for celebrations and special occasions',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Cakes',
      image: 'sweets.jpg',
      price: '₹200',
      description: 'Cakes are sweet, baked desserts often adorned with layers, frosting, and various flavors, enjoyed for celebrations and special occasions',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Cakes',
      image: 'sweets.jpg',
      price: '₹200',
      description: 'Cakes are sweet, baked desserts often adorned with layers, frosting, and various flavors, enjoyed for celebrations and special occasions',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Cakes',
      image: 'sweets.jpg',
      price: '₹200',
      description: 'Cakes are sweet, baked desserts often adorned with layers, frosting, and various flavors, enjoyed for celebrations and special occasions',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Pasta',
      image: 'pasta.jpg',
      price: '₹80',
      description: 'Spaghetti with marinara sauce and garlic bread.',
      //color: Colors.orange,
      count: 0,
    ),
    FoodItem(
      name: 'Salad',
      image: 'Salad.jpg',
      price: '₹100',
      description: 'Fresh garden salad with your choice of dressing.',
      //color: Colors.purple,
      count: 0,
    ),
    FoodItem(
      name: 'Cholle bhatura',
      image: 'Cholle_bhatura.jpg',
      price: '₹200',
      description: 'Chole Bhature is a popular North Indian dish consisting of spicy chickpea curry (chole) served with deep-fried bread (bhature).',
      //color: Colors.teal,
      count:0,
    ),
  ];
  final List<FoodItem> cartItems = [];
  @override
  State<menu_page> createState() => menu_pageState();
}
class menu_pageState extends State<menu_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Food Menu'),
      ),
      body: ListView.builder(
        itemCount: widget.foodItems.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
        //color: Colors.orange,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              width: 2,
              color: Colors.orange
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/${widget.foodItems[index].image}',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 150,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.foodItems[index].name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.foodItems[index].description),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Price: ${widget.foodItems[index].price}'),
          ),
          Row(
            children: [
              InkWell(
                onTap: (){
                  if(widget.foodItems[index].count==0){
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            backgroundColor: Colors.orange,
                            content: Center(child: Text("Please add some items!",style: TextStyle(color: Colors.white),))
                        )
                    );
                  }
                  else{
                    widget.foodItems[index].count-=1;
                    setState(() {

                    });
                    print(widget.foodItems[index].count);
                  }
                },
                child: Container(
                  width: 40,
                  height: 40,
                  child: Icon(Icons.remove),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: 1
                      )
                  ),
                ),
              ),
              Container(
                width: 40,
                height: 40,
                child: Center(child: Text(foodItems[index].count.toString())),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        width: 1
                    )
                ),),
              InkWell(
                onTap: (){
                  foodItems[index].count+=1;
                  setState(() {

                  });
                },
                child: Container(
                  width: 40,
                  height: 40,
                  child: Icon(Icons.add),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: 1
                      )
                  ),
                ),
              )
            ],
          )
        ],
      ),); }
  ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>checkout()));
        },
        child: Icon(Icons.shopping_cart,color: Colors.white,),
      ),
    );
  }
}

class FoodItem {
  final String name;
  final String image;
  final String price;
  final String description;
  //final Color color;
  num count;

  FoodItem({
    required this.name,
    required this.image,
    required this.price,
    required this.description,
    //required this.color,
    required this.count,
  });
}
class FoodItemCard extends StatefulWidget {
  final FoodItem item;
  final VoidCallback onAddToCart;

  FoodItemCard({required this.item, required this.onAddToCart});

  @override
  _FoodItemCardState createState() => _FoodItemCardState();
}

class _FoodItemCardState extends State<FoodItemCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.fastfood),
        title: Text(widget.item.name),
        subtitle: Text('\$${widget.item.price.toStringAsFixed(2)}'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Quantity: ${widget.item.quantity}'),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  widget.item.quantity++;
                  widget.onAddToCart();
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: () {
                if (widget.item.quantity > 0) {
                  setState(() {
                    widget.item.quantity--;
                    widget.onAddToCart();
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
*/