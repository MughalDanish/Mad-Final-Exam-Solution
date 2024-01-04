import 'package:flutter/material.dart';
import 'package:mad_final_paper/pages/addDish.dart';

class orderCart extends StatefulWidget {
  const orderCart({super.key});

  @override
  State<orderCart> createState() => _orderCartState();
}

class _orderCartState extends State<orderCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue,
            leading: IconButton(
              icon: Image(
                  image: AssetImage('assets/images/menuType2.png'),
                  height: 25,
                  width: 20),
              onPressed: () {},
            ),
            title: Padding(
              padding: EdgeInsets.only(left: 50),
              child: Text('Swigatto Dashboard',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      color: Colors.black54,
                      fontFamily: 'Actor')),
            )),
        body: Center(
          child:gridOfItems(),
        ));
  }
}

class cartConfiguartion extends StatefulWidget {
  const cartConfiguartion({super.key, required this.cartItem});

  final orderDetail cartItem;

  @override
  State<cartConfiguartion> createState() => _cartConfiguartionState();
}

class _cartConfiguartionState extends State<cartConfiguartion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 130,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Container(
                  height: 50,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(5)),
                  child: Image.asset(
                    widget.cartItem.image,
                    height: 90,
                    width: 90,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Padding(
                padding: EdgeInsets.only(top:1),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 25, right: 100),
                      child: Text(widget.cartItem.itemName,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'Actor')),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: EdgeInsets.only(right:140),
                      child: Text(widget.cartItem.itemDescription,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              fontFamily: 'Actor')),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left:10),
                          child: Text('\$' + widget.cartItem.price.toString(),
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontFamily: 'Actor')),
                        ),
                        SizedBox(width: 100),
                        GestureDetector(
                          onTap:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => addDishDetail()));
                          },
                          child: Container(
                              height: 25,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Icon(
                                Icons.edit,
                                color: Colors.white,
                              )),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void AddDataTolist(var image, String Name, String decr, int price){
  listOfItems.add( orderDetail(itemName: Name, itemDescription: decr, price: price, image: image));
}

List<orderDetail> listOfItems = [
  orderDetail(
      itemName: 'Food Aloha',
      itemDescription: 'desert',
      price: 20,
      image: 'assets/images/foodDish.jpg'),
  orderDetail(
      itemName: 'Food Aloha',
      itemDescription: 'desert',
      price: 20,
      image: 'assets/images/foodDish.jpg'),
  orderDetail(
      itemName: 'Food Aloha',
      itemDescription: 'desert',
      price: 20,
      image: 'assets/images/foodDish.jpg'),
  orderDetail(
      itemName: 'Food Aloha',
      itemDescription: 'desert',
      price: 20,
      image: 'assets/images/foodDish.jpg'),
  orderDetail(
      itemName: 'Food Aloha',
      itemDescription: 'desert',
      price: 20,
      image: 'assets/images/foodDish.jpg'),
  orderDetail(
      itemName: 'Food Aloha',
      itemDescription: 'desert',
      price: 20,
      image: 'assets/images/foodDish.jpg'),
];

class orderDetail {
  final String itemName;
  late String itemDescription;
  late int price;
  String image;

  orderDetail(
      {required this.itemName,
      required this.image,
      required this.price,
      required this.itemDescription});
}

class gridOfItems extends StatefulWidget {
  const gridOfItems({super.key});

  @override
  State<gridOfItems> createState() => _gridOfItemsState();
}

class _gridOfItemsState extends State<gridOfItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, mainAxisSpacing: 16.0, childAspectRatio: 3.0),
        itemCount: listOfItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(5.0),
            child: cartConfiguartion(cartItem: listOfItems[index]),
          );
        },
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
      ),
    ));
  }
}
