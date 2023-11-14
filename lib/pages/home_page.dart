import 'package:flutter/material.dart';
import 'package:flutter_telegram/controller/food_controller.dart';
import 'package:flutter_telegram/model/category.dart';
import 'package:flutter_telegram/pages/order_page.dart';
import 'package:flutter_telegram/utils/style.dart';
import 'package:flutter_telegram/view/item_food.dart';
import 'package:flutter_telegram/model/food_model.dart';
import 'package:flutter_telegram/utils/color.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int i = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: color1,
          elevation: 0,
          title: Text("Jaegar Resto",style: textSemiBolt28,),
          actions: [
            IconButton(
                onPressed: () {
                 Get.to(()=> const OrderPage());
                },
                icon: const Icon(
                  Icons.shopping_cart,
                  size: 30,
                  color: color2,
                ),),
            const SizedBox(
              width: 25,
            )
          ],
        ),
        body: GetBuilder<FoodController>(builder: (controller) {
          return Container(
            // margin: const EdgeInsets.only(top: 16),
            child: GridView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: controller.foods.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisExtent: 300),
                itemBuilder: (context, index) {
                  FoodModel food = controller.foods[index];
                  return itemFood(food, controller, index);
                }),
          );
        }));
  }
}
