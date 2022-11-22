import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

void main() => runApp(const SelectionDecoration());

class SelectionDecoration extends StatelessWidget {
  const SelectionDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SafeArea(
              child: SfCalendar(
                view: CalendarView.day,
                allowedViews: const <CalendarView>[
                  CalendarView.day,
                  CalendarView.week,
                  CalendarView.workWeek,
                  CalendarView.month,
                  CalendarView.timelineDay,
                  CalendarView.timelineWeek,
                  CalendarView.timelineWorkWeek,
                  CalendarView.timelineMonth,
                ],
                selectionDecoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  border: Border.all(color: Colors.deepPurple, width: 2),
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                  shape: BoxShape.rectangle,

                ),
              )),
        ));
  }
}