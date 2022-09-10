import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/mainController.dart';
import 'package:velocity_x/velocity_x.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<MainController>();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => 'Your Value Was: ${controller.count}'.text.xl2.bold.make()),
            30.squareBox,
            ElevatedButton(onPressed: ()=>controller.DecreaseValue(), child: 'Decrease'.text.make()),
            ElevatedButton(onPressed: ()=>Get.toNamed('/First' ), child: 'Back'.text.make()),

          ],
        ),
      ),
    );
  }
}
