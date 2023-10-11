import 'package:flutter/material.dart';
import 'package:jain/constants/colors.dart';
import 'package:jain/models/daily_check_model.dart';

class DailyChecks extends StatefulWidget {
  final DailyCheck dailyCheck;
  final VoidCallback? onYesTapped;
  final VoidCallback? onNoTapped;
  const DailyChecks(
      {super.key, required this.dailyCheck, this.onYesTapped, this.onNoTapped});

  @override
  State<DailyChecks> createState() => _DailyChecksState();
}

class _DailyChecksState extends State<DailyChecks> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.dailyCheck.title,
          style: TextStyle(
            fontSize: 20,
            color: darkBlueColor,
          ),
        ),
        TextButton(
          style: ButtonStyle(
            overlayColor: MaterialStatePropertyAll(
              greenColor.withOpacity(0.2),
            ),
            backgroundColor: MaterialStatePropertyAll(
              greenColor.withOpacity(0.1),
            ),
          ),
          onPressed: widget.onYesTapped,
          child: const Text(
            "Yes",
            style: TextStyle(
              fontSize: 18,
              color: greenColor,
            ),
          ),
        ),
        TextButton(
          style: ButtonStyle(
            overlayColor: MaterialStatePropertyAll(
              redColor.withOpacity(0.2),
            ),
            backgroundColor: MaterialStatePropertyAll(
              redColor.withOpacity(0.1),
            ),
          ),
          onPressed: widget.onNoTapped,
          child: const Text(
            "No",
            style: TextStyle(
              fontSize: 18,
              color: redColor,
            ),
          ),
        ),
        /*  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              color: redColor,
              iconSize: 40,
              onPressed: () {
                //TODO
              },
              icon: const Icon(
                Icons.cancel,
              ),
            ),
            IconButton(
              iconSize: 40,
              color: greenColor,
              onPressed: () {
                //TODO
              },
              icon: const Icon(
                Icons.done,
              ),
            ),
          ],
        ) */
      ],
    );
  }
}
