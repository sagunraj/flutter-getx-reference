import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/pages/home/controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "${homeController.count}",
                style: TextStyle(fontSize: 24),
              ),
            ),
            TextButton(
                onPressed: () {
                  Get.toNamed("/detail");
                  // off or offNamed doesn't allow coming back to this screen from the detail screen
                  // Get.offNamed("/detailed");
                  homeController.increment();
                  // print(apiService.fetchTextFromAPI());
                },
                child: Text("Go to detail"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    foregroundColor: MaterialStateProperty.all(Colors.white))),
            TextButton(
                onPressed: () {
                  // Get.toNamed("/detail");
                  homeController.increment();
                  // print(apiService.fetchTextFromAPI());
                },
                child: Text("Increase Value"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    foregroundColor: MaterialStateProperty.all(Colors.white))),
            TextButton(
                onPressed: () {
                  // Get.toNamed("/detail");
                  // Get.snackbar("This is a snackbar", "Snackbar message",
                  //     snackPosition: SnackPosition.BOTTOM);
                  Get.defaultDialog(
                      title: "This is a dialog",
                      middleText: "Hello",
                      confirm: TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Text("OK")));
                  // print(apiService.fetchTextFromAPI());
                },
                child: Text("Show Dialog"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    foregroundColor: MaterialStateProperty.all(Colors.white)))
          ],
        ),
      ),
    );
  }
}
