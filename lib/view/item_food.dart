import 'package:flutter/material.dart';
import 'package:flutter_telegram/controller/food_controller.dart';
import 'package:flutter_telegram/model/food_model.dart';
import '../utils/color.dart';
import '../utils/style.dart';
import 'package:get/get.dart';

Widget itemFood(FoodModel food, FoodController controller,int index) {
  return Stack(
    alignment: Alignment.bottomCenter,
    children: [
      Container(
        width: 192,
        height: 226,
        decoration: BoxDecoration(
          color: color1,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 100, right: 16, left: 16, bottom: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(food.foodName ?? "",
                  style: textMedium14, textAlign: TextAlign.center),
              const SizedBox(
                height: 8,
              ),
              Text("\$ ${food.price ?? ""}", style: textRegular14),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => controller.divorce(index),
                      child: Container(
                        height: 40,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: color2,
                            width: 1,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "-",
                            style: TextStyle(color: color2),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 40,
                      decoration: BoxDecoration(
                        color: color2,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.shopping_cart,
                            size: 16,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            food.count.toString(),
                            style: textRegularWrite14,
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.add(index);
                        print("object");
                      },
                      child: Container(
                        height: 40,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: color2,
                            width: 1,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "+",
                            style: TextStyle(color: color2),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Column(
        children: [
          SizedBox(
            width: 200,
            height: 170,
            child: Image.asset(
              food.image ?? "",
              alignment: Alignment.bottomCenter,
            ),
          ),
        ],
      ),
    ],
  );
}
