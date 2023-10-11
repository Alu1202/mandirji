import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:jain/constants/colors.dart';
import 'package:table_calendar/table_calendar.dart';

class TithiScreen extends StatefulWidget {
  const TithiScreen({super.key});

  @override
  State<TithiScreen> createState() => _TithiScreenState();
}

class _TithiScreenState extends State<TithiScreen> {
  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('hi');
    return TableCalendar(
      pageAnimationEnabled: true,
      pageAnimationCurve: Curves.easeInOutExpo,
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: DateTime.now(),
      rowHeight: 100,
      daysOfWeekHeight: 50,
      daysOfWeekStyle: DaysOfWeekStyle(
        decoration: BoxDecoration(color: Colors.blueGrey.withOpacity(0.5)),
        weekendStyle: const TextStyle(
          color: redColor,
        ),
      ),
      locale: "hi",
      calendarStyle: CalendarStyle(
        tablePadding: const EdgeInsets.all(10),
        cellMargin: const EdgeInsets.all(5),
        tableBorder: TableBorder.all(
            borderRadius: BorderRadius.circular(30),
            width: 1,
            color: Colors.blueGrey),
      ),
    );
  }
}
