import 'package:codetech/view/AcademicCalender.dart';
import 'package:codetech/view/Settings.dart';
import 'package:codetech/view/clubs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double _x = 0;
  double _y = 0;
  double _scaling = 1;
  bool _pressed = false;
  @override
  Widget build(BuildContext context) {

    return AnimatedContainer(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(_pressed?40:0),
        color: Colors.white,
        boxShadow: [BoxShadow(
            color: Colors.orange,
            offset: Offset(0.0, 1.0),
            blurRadius: 5.0
        )
        ]
      ),
      duration: Duration(milliseconds: 250),
      transform: Matrix4.translationValues(_x, _y, 0)..scale(_scaling),
      child: ListView(
        children: [
          Container(
            color: Colors.orange,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _pressed?IconButton(icon: Icon(Icons.arrow_back_ios, size: 30, color: Colors.white,), onPressed: () {setState(() {
                    _x = 0; _y = 0; _scaling = 1; _pressed=false;
                  });},):IconButton(icon: Icon(Icons.menu_rounded, size: 30, color: Colors.white,), onPressed: () {setState(() {
                    _x = 250; _y = 250; _scaling = 0.6; _pressed = true;
                  });},),
                  IconButton(
                      onPressed: (){
                        Get.to(() {});
                      },
                      icon: Icon(Icons.settings_outlined, color: Colors.white, size: 30,)),
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 3.0
                )
              ]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.search, color: Colors.orange, size: 30,),
                Text('Search', style: TextStyle(fontSize: 22),),
                Icon(Icons.graphic_eq, color: Colors.orange, size: 30,)
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 20,),
                  ActionChip(
                    label: Text('Clubs', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                    onPressed: (){Get.to(() => Clubs());},
                    avatar: Icon(Icons.computer_rounded, size: 30, color: Colors.blueAccent,),
                    backgroundColor: Colors.white,
                  ),
                SizedBox(width: 20,),
            ActionChip(
              label: Text('Fests', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              onPressed: (){},
              avatar: Icon(Icons.music_note, size: 30, color: Colors.purpleAccent,),
              backgroundColor: Colors.white,
            ),
                SizedBox(width: 20,),
            ActionChip(
              label: Text('Scholarship', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              onPressed: (){},
              avatar: Icon(Icons.school_sharp, size: 30, color: Colors.red,),
              backgroundColor: Colors.white,
            ),
                SizedBox(width: 20,),
            ActionChip(
              label: Text('Gallery', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              onPressed: (){},
              avatar: Icon(Icons.camera, size: 30, color: Colors.orange,),
              backgroundColor: Colors.white,
            ),
                SizedBox(width: 20,),
                ActionChip(
                  label: Text('Books', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  onPressed: (){},
                  avatar: Icon(Icons.book_rounded, size: 30, color: Colors.green,),
                  backgroundColor: Colors.white,
                ),
            ],),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text('News', style: TextStyle(fontSize: 35, color: Colors.orange),),
          ),
          SizedBox(height: 20,),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 20,),
                Container(
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(
                          10.0)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Icon(Icons.account_box_rounded, color: Colors.deepOrange, size: 40,),
                      Text('Undergraduate', style: TextStyle(fontSize: 20, color: Colors.white),),
                      Text('Branch Sliding', textAlign: TextAlign.center, style: TextStyle(fontSize: 19),)
                    ],
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      borderRadius: BorderRadius.all(Radius.circular(
                          10.0))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Icon(Icons.account_box_rounded, color: Colors.deepOrange, size: 40,),
                      Text('MCA(First Year)', style: TextStyle(fontSize: 20, color: Colors.white),),
                      Text('Offline Classes', textAlign: TextAlign.center, style: TextStyle(fontSize: 19),)
                    ],
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(
                          10.0))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Icon(Icons.account_box_rounded, color: Colors.deepOrange, size: 40,),
                      Text('MTech', style: TextStyle(fontSize: 20, color: Colors.white),),
                      Text('Geology Related', textAlign: TextAlign.center, style: TextStyle(fontSize: 19),)
                    ],
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.all(Radius.circular(
                          10.0))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Icon(Icons.account_box_rounded, color: Colors.deepOrange, size: 40,),
                      Text('MTech', style: TextStyle(fontSize: 20, color: Colors.white),),
                      Text('Document Verification', textAlign: TextAlign.center, style: TextStyle(fontSize: 19),)
                    ],
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(
                          10.0))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Icon(Icons.account_box_rounded, color: Colors.deepOrange, size: 40,),
                      Text('Undergraduate', style: TextStyle(fontSize: 20, color: Colors.white),),
                      Text('Admission & Registration', textAlign: TextAlign.center, style: TextStyle(fontSize: 19),)
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text('Events', style: TextStyle(fontSize: 35, color: Colors.orange),),
          ),
          SizedBox(height: 20,),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 20,),
                Container(
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.all(Radius.circular(
                          10.0))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Icon(Icons.account_box_rounded, color: Colors.deepOrange, size: 40,),
                      Text('National Conference', style: TextStyle(fontSize: 20, color: Colors.white),),
                      Text('Advanced Materials and Applications', textAlign: TextAlign.center, style: TextStyle(fontSize: 19),)
                    ],
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.indigoAccent,
                      borderRadius: BorderRadius.all(Radius.circular(
                          10.0))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Icon(Icons.account_box_rounded, color: Colors.deepOrange, size: 40,),
                      Text('International Conference', style: TextStyle(fontSize: 20, color: Colors.white),),
                      Text('Information System & Management', textAlign: TextAlign.center, style: TextStyle(fontSize: 19),)
                    ],
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.all(Radius.circular(
                          10.0))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Icon(Icons.account_box_rounded, color: Colors.deepOrange, size: 40,),
                      Text('E-Workshop', style: TextStyle(fontSize: 20, color: Colors.white),),
                      Text('Computational Intelligence & Blockchain', textAlign: TextAlign.center, style: TextStyle(fontSize: 19),)
                    ],
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.lightGreenAccent,
                      borderRadius: BorderRadius.all(Radius.circular(
                          10.0)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Icon(Icons.account_box_rounded, color: Colors.deepOrange, size: 40,),
                      Text('Development Program', style: TextStyle(fontSize: 20, color: Colors.white),),
                      Text('AI & ML', textAlign: TextAlign.center, style: TextStyle(fontSize: 19),)
                    ],
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.cyanAccent,
                      borderRadius: BorderRadius.all(Radius.circular(
                          10.0))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Icon(Icons.account_box_rounded, color: Colors.deepOrange, size: 40,),
                      Text('Development Program', style: TextStyle(fontSize: 20, color: Colors.white),),
                      Text('Intelligent Computer in Health Care', textAlign: TextAlign.center, style: TextStyle(fontSize: 19),)
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text('Quick Help', style: TextStyle(fontSize: 35, color: Colors.orange),),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [GestureDetector(
                child: Container(
                  width: 190,
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
                      Icon(Icons.calendar_today_rounded, color: Colors.deepOrange, size: 40,),
                      Text('', style: TextStyle(fontSize: 18, color: Colors.deepOrange),),
                      Text('Academic Calendar', textAlign: TextAlign.center, style: TextStyle(fontSize: 18),)
                    ],
                  ),
                ),
                onTap: () => Get.offAll(AcademicCalender()),
              ),
            SizedBox(width: 20,),
            Container(
              width: 190,
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
                  Icon(Icons.receipt_rounded, color: Colors.deepOrange, size: 40,),
                  Text('', style: TextStyle(fontSize: 18, color: Colors.deepOrange),),
                  Text('Syllabus', textAlign: TextAlign.center, style: TextStyle(fontSize: 18),)
                ],
              ),
            ),
            ]),
          ),
          SizedBox(height: 20,),
          Container(
            height: 180,
            padding: EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
          Container(
            width: 190,
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
                Icon(Icons.directions_walk_rounded, color: Colors.deepOrange, size: 40,),
                Text('', style: TextStyle(fontSize: 18, color: Colors.deepOrange),),
                Text('Admission', textAlign: TextAlign.center, style: TextStyle(fontSize: 18),)
              ],
            ),
          ),
          SizedBox(width: 20,),
          Container(
            width: 190,
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
                Icon(Icons.receipt_long_rounded, color: Colors.deepOrange, size: 40,),
                Text('', style: TextStyle(fontSize: 18, color: Colors.deepOrange),),
                Text('JEE CutOffs', textAlign: TextAlign.center, style: TextStyle(fontSize: 18),)
              ],
            ),
          ),
          ])),
          SizedBox(height: 20,),
          Container(
            height: 180,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
          Container(
            width: 190,
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
                Icon(Icons.insert_drive_file_rounded, color: Colors.deepOrange, size: 40,),
                Text('', style: TextStyle(fontSize: 18, color: Colors.deepOrange),),
                Text('Fee Structure', textAlign: TextAlign.center, style: TextStyle(fontSize: 18),)
              ],
            ),
          ),
          SizedBox(width: 20,),
          Container(
            width: 190,
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
                Icon(Icons.download_rounded, color: Colors.deepOrange, size: 40,),
                Text('', style: TextStyle(fontSize: 18, color: Colors.deepOrange),),
                Text('Downloads', textAlign: TextAlign.center, style: TextStyle(fontSize: 18),)
              ],
            ),
          ),
    ])),
          SizedBox(height: 40,),
        ],
      ),
    );
  }
}
