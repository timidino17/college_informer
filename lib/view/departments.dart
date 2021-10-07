import 'package:flutter/material.dart';

class Departments extends StatelessWidget {
  const Departments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Departments'),
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
                  Image.asset('assets/images/splash_logo.png', height: 50, width: 50,),
                  Text('Computer Science and Engineering', style: TextStyle(fontSize: 25, color: Colors.white),),
                  Text('National Institute of Technology Raipur', style: TextStyle(fontSize: 22),)
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
                  Image.asset('assets/images/splash_logo.png', height: 50, width: 50,),
                  Text('Information Technology', style: TextStyle(fontSize: 25, color: Colors.white),),
                  Text('National Institute of Technology Raipur', style: TextStyle(fontSize: 22),)
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
                  Image.asset('assets/images/splash_logo.png', height: 50, width: 50,),
                  Text('Electronics and Communication', style: TextStyle(fontSize: 25, color: Colors.white),),
                  Text('National Institute of Technology Raipur', style: TextStyle(fontSize: 22),)
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
                  Image.asset('assets/images/splash_logo.png', height: 50, width: 50,),
                  Text('Electrical Engineering', style: TextStyle(fontSize: 25, color: Colors.white),),
                  Text('National Institute of Technology Raipur', style: TextStyle(fontSize: 22),)
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
                  Image.asset('assets/images/splash_logo.png', height: 50, width: 50,),
                  Text('Mechanical Engineering', style: TextStyle(fontSize: 25, color: Colors.white),),
                  Text('National Institute of Technology Raipur', style: TextStyle(fontSize: 22),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
