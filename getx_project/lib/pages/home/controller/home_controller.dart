import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:get/get.dart';

class HomeController extends GetxController {
  // observable variable
  var count = 0.obs;

  increment() {
    count++;
  }
}
