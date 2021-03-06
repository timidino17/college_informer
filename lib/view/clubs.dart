import 'package:flutter/material.dart';

class Clubs extends StatelessWidget {
  const Clubs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Clubs'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              height: 200,
              decoration: BoxDecoration(
                color: Colors.lightGreenAccent,
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/nrityam.jpeg', height: 50, width: 50,),
                  Text('Nrityam Club', style: TextStyle(fontSize: 25, color: Colors.white),),
                  Text('NIT Raipur Dance Club', style: TextStyle(fontSize: 22),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 200,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/abhinay.png', height: 50, width: 50,),
                  Text('Abhinay Club', style: TextStyle(fontSize: 25, color: Colors.white),),
                  Text('NIT Raipur Drama Club', style: TextStyle(fontSize: 22),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 200,
              decoration: BoxDecoration(
                color: Colors.cyanAccent,
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/download.png', height: 50, width: 50,),
                  Text('Click Club', style: TextStyle(fontSize: 25, color: Colors.white),),
                  Text('NIT Raipur Photo Lovers Club', style: TextStyle(fontSize: 22),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 200,
              decoration: BoxDecoration(
                color: Colors.purpleAccent,
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/robotics.png', height: 50, width: 50,),
                  Text('Robotics Club', style: TextStyle(fontSize: 25, color: Colors.white),),
                  Text('NIT Raipur Robots Lover Club', style: TextStyle(fontSize: 22),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 200,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/sahyog.jpeg', height: 50, width: 50,),
                  Text('Sahyog Club', style: TextStyle(fontSize: 25, color: Colors.white),),
                  Text('NIT Raipur Helping Club', style: TextStyle(fontSize: 22),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
