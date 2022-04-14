import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/bottom_nav_bar.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF1E0DD),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(25),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: <Color>[Color(0XFFDE6262), Color(0XFFFFB88C)]),
          ),
          child: Align(
            alignment: Alignment.center,
            // alignment: Alignment(0.11, 0.25),
            child: Row(children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back),
                iconSize: 30,
              ).pOnly(top: 30),
              20.widthBox,
              const Text("SEMESTER 4 ACADEMIC SHEDULE",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16))
                  .pOnly(top: 30),
            ]),
          ),
        ),
      ),
      body: Container(
        height: 345,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: SingleChildScrollView(
          child: TableCalendar(
            firstDay: DateTime.utc(2010, 4, 21),
            lastDay: DateTime.utc(2030, 4, 21),
            focusedDay: _focusedDay,
            calendarFormat: _calendarFormat,
            startingDayOfWeek: StartingDayOfWeek.monday,
            calendarStyle: const CalendarStyle(
                weekendTextStyle: TextStyle(color: Colors.red)),
            selectedDayPredicate: (day) {
              // Use `selectedDayPredicate` to determine which day is currently selected.
              // If this returns true, then `day` will be marked as selected.
              
              // Using `isSameDay` is recommended to disregard
              // the time-part of compared DateTime objects.
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              if (!isSameDay(_selectedDay, selectedDay)) {
                // Call `setState()` when updating the selected day
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              }
            },
            onFormatChanged: (format) {
              if (_calendarFormat != format) {
                // Call `setState()` when updating calendar format
                setState(() {
                  _calendarFormat = format;
                });
              }
            },
            onPageChanged: (focusedDay) {
              // No need to call `setState()` here
              _focusedDay = focusedDay;
            },
          ),
        ),
      ).p(15),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
