import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/mainController.dart';
import 'package:velocity_x/velocity_x.dart';
import 'Screen2.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(MainController());
    return Scaffold(
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // GetBuilder<MainController>(
            //     builder: (controller){
            //       return  'This is value: ${controller.count}'.text.xl2.bold.make();
            //     }), Method 2 for Multiple Wigets

            Obx(()=> 'This is value: ${controller.count.value}'.text.xl2.bold.make()),

            20.heightBox,
            ElevatedButton(onPressed: ()=>controller.IncreaseValue(), child: 'Increase'.text.make()),
            20.heightBox,

            ElevatedButton(
                onPressed: ()=>Get.to(()=>
                    Screen2(),
                    transition: Transition.downToUp,
                  duration: Duration(seconds: 3)

                ),
                child: 'Screen 2'.text.make()),

            20.heightBox,


            ElevatedButton(
                onPressed: (){
                  controller.ChangeTheme();
                },
                child: 'Change Theme'.text.make()),

            20.heightBox,


            ElevatedButton(
                onPressed: (){
                  Get.snackbar('Malik Ahzaz', 'Hello! Welcome',backgroundColor: Vx.gray400,showProgressIndicator: true);
                },
                child: 'Show Snakbar'.text.make()),
            20.heightBox,


            ElevatedButton(
                onPressed: (){
                  Get.defaultDialog(
                    title: 'Hello',
                    middleText: 'Welcome',
                    textConfirm: 'Yes',
                    textCancel: 'No'

                  );
                },
                child: 'Show Dailog'.text.make()),
          ],
        ),
      ),
    );
  }
}
