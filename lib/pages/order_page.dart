import 'package:flutter/material.dart';
import 'package:flutter_telegram/model/food_model.dart';
import 'package:flutter_telegram/view/order_item_view.dart';

import '../utils/color.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  FoodModel food = FoodModel(
    foodName: "Spicy instant noodle with special omelette",
    image: "images/img_1.png",
    price: 3.59,
    count: 1,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color3,
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: 400, // Set a fixed height or use constraints according to your UI design
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return orderItemsView(food);
                },
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24,right: 24),
              child: Divider(color: grey,height: 2)),
          Container(
            height: 200,
            child: Padding(
              padding: EdgeInsets.only(left: 24,right: 24,top: 24),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("data")
                    ],
                  )
                ],
              ),
              
            ),
          ),
        ],
      ),
    );
  }
}
