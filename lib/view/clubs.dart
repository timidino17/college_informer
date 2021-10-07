
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Clubs extends StatelessWidget {
  const Clubs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,
        title: Text('Clubs', style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.purpleAccent,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(150))
              ),
            )
          ],
        ),
      ),
    );
  }
}
