import 'package:get/get.dart';

import '../model/food_model.dart';

class FoodController extends GetxController{
int count = 0;

  List<FoodModel> foods = [
    FoodModel(
      foodName: "Spicy seasoned seafood noodles",
      image: "images/img_1.png",
      price: 2.29,
      count: 0,
    ),
    FoodModel(
      foodName: "SSalted Pasta with mushroom sauce",
      image: "images/img_2.png",
      price: 2.69,
      count: 0,

    ),
    FoodModel(
      foodName: "Beef dumpling in hot and sour soup ",
      image: "images/img_3.png",
      price: 2.99,
      count: 0,

    ),
    FoodModel(
      foodName: "Healthy noodle with spinach leaf",
      image: "images/img_4.png",
      price: 3.29,
      count: 0,

    ),
    FoodModel(
      foodName: "Hot spicy fried rice with omelet",
      image: "images/img_4.png",
      price: 3.49,
      count: 0,

    ),
    FoodModel(
      foodName: "Spicy instant noodle with special omelette",
      image: "images/img_5.png",
      price: 3.59,
      count: 0,

    ),
    FoodModel(
      foodName: "Healthy noodle with spinach leaf",
      image: "images/img_6.png",
      price: 3.29,
      count: 0,

    ),
    FoodModel(
      foodName: "Hot spicy fried rice with omelet",
      image: "images/img_7.png",
      price: 3.49,
      count: 0,

    ),
    FoodModel(
      foodName: "Spicy instant noodle with special omelette",
      image: "images/img_8.png",
      price: 3.59,
      count: 0,

    ),
  ];


  void add(int index) {
    count++;
    print(count);
    if (index >= 0 && index < foods.length) {
      foods[index].count = count;
      count =0;
      
      print("obj +${foods[index].count}");

      update();

    }
  }

  void divorce(int index) {
    if(count >= 0){
      count--;
      print(count);
    }
    if (index >= 0 && index < foods.length && foods[index].count! > 0) {
      foods[index].count = count;
      count =0;
      print("obj ${foods[index].count}");
      update();
    }
  }


}