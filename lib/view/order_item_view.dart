import 'package:flutter/material.dart';

import '../model/food_model.dart';
import '../utils/color.dart';
import '../utils/style.dart';


Widget orderItemsView(FoodModel food) {
  TextEditingController text = TextEditingController(text: "Please, just a little bit spicy only.");
  return Container(
    margin: const EdgeInsets.only(left: 24,right: 24,top: 20),
    // color: Colors.red,
    height: 106,
    width: double.infinity,
    child: Expanded(
      child: Column(
        children: [
          SizedBox(
            height: 48,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  food.image ?? "",
                  width: 40,
                  height: 40,
                ),
                const SizedBox(width: 8,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        food.foodName ?? "",
                        style: textMedium14,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "\$ ${food.price.toString()}",
                        style: textRegular12,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 60,
                ),
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: color4,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: line,
                      width: 1,
                    ),
                  ),
                  child: Center(child: Text(food.count.toString() ?? "", style: textMedium14,)),
                ),
                const SizedBox(width: 30,),
                Text("\$ ${food.count! * food.price!}", style: textMedium14,),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 48,
                  padding: const EdgeInsets.symmetric(horizontal:  10),
                  decoration: BoxDecoration(
                    color: color4,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: line,
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: TextField(
                      controller: text,
                      style: textRegularWrite14,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Order Note...",
                        hintStyle: textRegular14,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20,),
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: line2,
                    width: 1,
                  ),
                ),
                child: Center(child: Image.asset("images/Vector.png")),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
