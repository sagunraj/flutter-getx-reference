
import 'package:get/instance_manager.dart';
import 'package:getx_project/pages/home/controller/home_controller.dart';
import 'package:getx_project/services/api_service.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // dependency injection
    Get.put(ApiService());
    Get.put(HomeController());
  }
}