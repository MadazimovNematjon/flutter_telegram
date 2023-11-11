import 'package:flutter_telegram/controller/food_controller.dart';
import 'package:get/get.dart';

class DIService{


  static Future<void> init() async {
    Get.lazyPut<FoodController>(() => FoodController(), fenix: true);

  }
}