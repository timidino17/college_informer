import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top:20, left: 20, bottom: 20),
        child: ListView(
          children: [
            Row(
              children: [
                ClipOval(child: Image.asset('assets/images/splash_logo.png', width: 60, height: 60,)),
                SizedBox(width: 15,),
                Text('National Institute of Technology Raipur', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),)
              ],
            ),
            SizedBox(height: 200,),
            GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(-2.0, 2.0),
                    )
                  ]
                ),
                child: Row(
                  children: [
                    Icon(Icons.school_sharp, color: Colors.white, size: 35,), SizedBox(width: 20,), Text('Alumni', style: TextStyle(fontSize: 19, color: Colors.white),),
                  ],
                ),
              ),
              onTap: () {},
            ),
            SizedBox(height: 30,),
            GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(-1.0, 2.0),
                      )
                    ]
                ),
                child: Row(
                  children: [
                    Icon(Icons.admin_panel_settings_rounded, color: Colors.white, size: 35,), SizedBox(width: 20,), Text('Administration', style: TextStyle(fontSize: 19, color: Colors.white),),
                  ],
                ),
              ),
              onTap: (){},
            ),
            SizedBox(height: 30,),
            GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(-1.0, 2.0),
                      )
                    ]
                ),
                child: Row(
                  children: [
                    Icon(Icons.holiday_village_sharp, color: Colors.white, size: 35,), SizedBox(width: 20,), Text('Departments', style: TextStyle(fontSize: 19, color: Colors.white),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(-1.0, 2.0),
                      )
                    ]
                ),
                child: Row(
                  children: [
                    Icon(Icons.home_work_rounded, color: Colors.white, size: 35,), SizedBox(width: 20,), Text('Facilities', style: TextStyle(fontSize: 19, color: Colors.white),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(-1.0, 2.0),
                      )
                    ]
                ),
                child: Row(
                  children: [
                    Icon(Icons.contact_phone_rounded, color: Colors.white, size: 35,), SizedBox(width: 20,), Text('Contacts', style: TextStyle(fontSize: 19, color: Colors.white),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        // blurRadius: 5.0,
                        offset: Offset(-1.0, 2.0),
                      )
                    ]
                ),
                child: Row(
                  children: [
                    Icon(Icons.perm_identity_rounded, color: Colors.white, size: 35,), SizedBox(width: 20,), Text('T&P', style: TextStyle(fontSize: 19, color: Colors.white),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 240,),

            Row(
              children: [
                Icon(Icons.settings, color: Colors.white, size: 35,),
                SizedBox(width: 20,),
                Text('Settings', style: TextStyle(fontSize: 19, color: Colors.black),),
                SizedBox(width: 20,),
                Container(width: 2, height: 20, color: Colors.white,),
                SizedBox(width: 20,),
                Text('Log Out', style: TextStyle(fontSize: 19, color: Colors.black),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
