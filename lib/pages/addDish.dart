import 'package:flutter/material.dart';
import 'package:mad_final_paper/pages/carts_list.dart';

class addDishDetail extends StatefulWidget {
  const addDishDetail({super.key});

  @override
  State<addDishDetail> createState() => _addDishDetailState();
}

class _addDishDetailState extends State<addDishDetail> {
  final _description = TextEditingController();
  final _name = TextEditingController();
  final _price = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          leading: IconButton(
            icon: Image(
                image: AssetImage('assets/images/icons.png'),
                height: 25,
                width: 20),
            onPressed: () {},
          ),
          title: Padding(
            padding: EdgeInsets.only(left: 70),
            child: Text('AddDish',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontFamily: 'Actor')),
          )),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                height: 50,
                width: 360,
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(2)),
                child: Padding(
                  padding: EdgeInsets.only(left:10),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      labelText: 'DishId*',
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.0),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54, width: 1.0),
                      ),
                      labelStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email address.';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: 360,
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(2)),
                child: Padding(
                  padding: EdgeInsets.only(left:10),
                  child: TextFormField(
                    controller: _name,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      labelText: 'DishName',
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.0),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54, width: 1.0),
                      ),
                      labelStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email address.';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: 360,
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(2)),
                child: Padding(
                  padding: EdgeInsets.only(left:10),
                  child: TextFormField(
                    controller: _price,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      labelText: 'DishPrice',
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.0),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54, width: 1.0),
                      ),
                      labelStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email address.';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  checkBox(label: 'Available'),
                  SizedBox(width: 100), // Add some spacing between checkboxes
                  checkBox(label: 'Not Available'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 370,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    underline: Container(),
                    // Remove default underline
                    value: 'Select Dish type',
                    // Default value
                    onChanged: (String? newValue) {
                      // Handle selection
                      print('Selected: $newValue');
                    },
                    items: <String>[
                      'Option 1',
                      'Option 2',
                      'Option 3',
                      'Option 4',
                      'Select Dish type'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: 360,
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(2)),
                child: Padding(
                  padding: EdgeInsets.only(left:10),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      labelText: 'RestaurantId',
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.0),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54, width: 1.0),
                      ),
                      labelStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email address.';
                      } else if (!RegExp(r'^.+@[a-zA-Z]+\.[a-zA-Z]+$')
                          .hasMatch(value)) {
                        return 'Please enter a valid email address.';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Image.asset('assets/images/fries.png',
                height: 200,
                width: 100,),
                SizedBox(width: 10,),
                Image.asset('assets/images/burger.png',
                  height: 200,
                  width: 100,),
              ],),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(left: 230),
                child: ElevatedButton(
                  child: Text(
                    'Add',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    minimumSize: Size(70, 55),
                  ),
                  onPressed: () {
                    AddDataTolist('assets/images/foodDish.jpg', _name.text, 'desert', 100);
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>orderCart()));

                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class checkBox extends StatefulWidget {
  final String label;

  const checkBox({Key? key, required this.label}) : super(key: key);

  @override
  State<checkBox> createState() => _checkBoxState();
}

class _checkBoxState extends State<checkBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          checkColor: Colors.green,
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        Text(widget.label),
      ],
    );
  }
}
