import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:codetech/view/IntroView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    goToIntroScreen();
  }

  goToIntroScreen() async{
    await Future.delayed(Duration(milliseconds: 5000), (){});
      Get.offAll(() => IntroView());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/College_fest.png', fit: BoxFit.cover,),
                SizedBox(height: 20,),
                SplashLogo(),
              ],
            )
        ),
      ),
    );
  }
}

class SplashLogo extends StatelessWidget {
  const SplashLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const colorPack = [
      Colors.purple, Colors.blue, Colors.yellow, Colors.red
    ];
    const animationTextStyle = TextStyle(
        fontFamily: "Horizon",
        fontSize: 40
    );
    return Container(
      child: AnimatedTextKit(animatedTexts: [
        ColorizeAnimatedText("COLLEGE INFORMER", textStyle: animationTextStyle, colors: colorPack)
      ],
        totalRepeatCount: 1,
      ),
    );
  }
}