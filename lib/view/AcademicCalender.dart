import 'package:codetech/view/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class AcademicCalender extends StatelessWidget {
  const AcademicCalender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Academic Calender', style: TextStyle(fontSize: 26, color: Colors.white),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){Get.offAll(() => Home());}, icon: Icon(Icons.home, color: Colors.white, size: 28,)),
          )
        ],
      ),
      body: Container(
        child: TableCalendar(
          firstDay: DateTime.utc(1980, 01, 01), lastDay: DateTime.utc(2070, 12, 31), focusedDay: DateTime.now(),
          calendarStyle: CalendarStyle(
            weekendTextStyle: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.w300),
          ),
        ),
        padding: EdgeInsets.only(top: 20),
      )
    );
  }
}
