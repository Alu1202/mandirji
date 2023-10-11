import 'package:flutter/material.dart';
import 'package:jain/constants/colors.dart';
import 'package:jain/constants/labels.dart';
import 'package:jain/models/daily_check_model.dart';
import 'package:jain/utils/util.dart';
import 'package:jain/utils/widgets/daily_checks_layout.dart';

class PathShala extends StatefulWidget {
  const PathShala({super.key});

  @override
  State<PathShala> createState() => _PathShalaState();
}

class _PathShalaState extends State<PathShala> {
  List<DailyCheck> myAttendance = [
    DailyCheck(
      title: manastamb,
      status: 0,
    ),
    DailyCheck(
      title: darshanPath,
      status: 0,
    ),
    DailyCheck(
      title: ratriBhojan,
      status: 0,
    ),
    DailyCheck(
      title: manastamb,
      status: 0,
    ),
    DailyCheck(
      title: darshanPath,
      status: 0,
    ),
    DailyCheck(
      title: ratriBhojan,
      status: 0,
    ),
  ];

  String today = getformattedDate(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                darkBlueColor.withOpacity(0.2),
              ),
            ),
            onPressed: () async {
              String selectedDate = await selectDate(context);
              setState(() {
                today = selectedDate;
              });
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.calendar_month_outlined,
                  color: darkBlueColor,
                ),
                Text(
                  today.toUpperCase(),
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: darkBlueColor),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: myAttendance.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return Card(
                  child: DailyChecks(
                    dailyCheck: myAttendance[index],
                    onYesTapped: () {
                      setState(() {
                        myAttendance.removeAt(index);
                      });
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
