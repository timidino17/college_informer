import 'package:codetech/view/MainPage.dart';
import 'package:codetech/view/MenuPage.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MenuPage(),
          MainPage()
        ],
      ),
    );
  }
}

