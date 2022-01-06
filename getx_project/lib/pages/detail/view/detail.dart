import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/pages/home/controller/home_controller.dart';
import 'package:getx_project/services/api_service.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // accessing the dependency from here
    final apiService = Get.find<ApiService>();
    final homeController = Get.find<HomeController>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Screen"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // print(apiService.fetchTextFromAPI());
            print(homeController.count);
            // Get.back();
          },
        ),
      ),
    );
  }
}
