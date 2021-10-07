import 'package:codetech/control/IntroController.dart';
import 'package:codetech/view/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroView extends StatelessWidget {
  const IntroView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = IntroController();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.orange,
        actions:[
        Padding(
          padding: const EdgeInsets.only(top:10),
          child: Obx(() =>Row(
            children: controller.currentPage.value == controller.introPage.length-1?[]:[
              GestureDetector(child: Text('Skip', style: TextStyle(fontSize: 20, color: Colors.white),),
              onTap: () => Get.offAll(() => Home()),),
              IconButton(onPressed: () {Get.to(() => Home());}, icon: Icon(Icons.arrow_forward_rounded, color: Colors.white,))
            ],
          ),
        )),
        ],
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView.builder(
            onPageChanged: controller.currentPage,
            itemBuilder: (context, index) {
            return Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(controller.introPage[index].imageAsset),
                  SizedBox(height: 24,),
                  Text(controller.introPage[index].title, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.orange),),
                  SizedBox(height: 32,),
                  Container(
                    color: Colors.orange,
                    padding: EdgeInsets.all(32),
                    child: Text(controller.introPage[index].description, style: TextStyle( fontSize: 20, color: Colors.white), textAlign: TextAlign.center,),
                  )
                ],
              ),
            );
          },
          itemCount: controller.introPage.length,),
          Positioned(
            bottom: 20,
            left: 20,
            child: Row(
              children: List.generate(controller.introPage.length, (index) => Obx(() => Container(
                margin: EdgeInsets.all(5),
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: controller.currentPage.value == index? Colors.orange: Colors.grey,
                  shape: BoxShape.circle
                ),
              ))),
            ),
          ),
          Positioned(
              bottom: 40,
              right: 20,
              child: Obx(() => GestureDetector(
                child: controller.currentPage.value != controller.introPage.length-1?null:
                      Container(
                  height: 80,
                  width: 80,
                  child: Icon(Icons.arrow_forward_ios, size: 30, color: Colors.white,),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle
                  ),
          ),
                onTap: () {Get.offAll(() => Home());},
              )))
        ],
      )
    );
  }
}
