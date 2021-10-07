import 'package:codetech/control/AcadController.dart';
import 'package:codetech/view/Home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AcademicView extends StatelessWidget {
  const AcademicView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = AcademicController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Academic Contacts', style: TextStyle(fontSize: 26,color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.orange,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){Get.offAll(() => Home());}, icon: Icon(Icons.home, color: Colors.white, size: 28,)),
          )
        ],
      ),
      body: PageView.builder(itemCount: _controller.academicContact.length,
        itemBuilder:(context, index) {
          return Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipOval(child: Image.asset(
                    'assets/images/acad2.jpeg', height: 200,
                    width: 200,
                    fit: BoxFit.cover,)),
                  SizedBox(height: 20,),
                  Text(_controller.academicContact[index].name,
                    style: TextStyle(fontSize: 28, color: Colors.deepOrange),
                    textAlign: TextAlign.center,),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 250,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(
                                10.0)),
                            boxShadow: [BoxShadow(
                                color: Colors.orange,
                                offset: Offset(0.0, 1.0),
                                blurRadius: 5.0
                            )
                            ]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.account_box_rounded, color: Colors.deepOrange, size: 40,),
                            Text('Designation', style: TextStyle(fontSize: 20, color: Colors.deepOrange),),
                            Text(_controller.academicContact[index].designation, textAlign: TextAlign.center, style: TextStyle(fontSize: 19),)
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(
                                10.0)),
                            boxShadow: [BoxShadow(
                                color: Colors.orange,
                                offset: Offset(0.0, 1.0),
                                blurRadius: 5.0
                            )
                            ]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.alternate_email, color: Colors.deepOrange, size: 40,),
                            Text('Write me at', style: TextStyle(fontSize: 18, color: Colors.deepOrange),),
                            Text(_controller.academicContact[index].email, textAlign: TextAlign.center, style: TextStyle(fontSize: 18),)
                          ],
                        ),
                      ),
                      SizedBox(width: 20,),
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(
                                10.0)),
                            boxShadow: [BoxShadow(
                                color: Colors.orange,
                                offset: Offset(0.0, 1.0),
                                blurRadius: 5.0
                            )
                            ]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.phone, color: Colors.deepOrange, size: 40,),
                            Text('Contact Me', style: TextStyle(fontSize: 18, color: Colors.deepOrange),),
                            Text(_controller.academicContact[index].phone, textAlign: TextAlign.center, style: TextStyle(fontSize: 18),)
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
