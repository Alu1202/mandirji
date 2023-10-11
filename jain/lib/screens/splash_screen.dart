import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jain/constants/labels.dart';
import 'package:jain/constants/styles.dart';
import 'package:jain/screens/home_screen.dart';
import 'package:jain/utils/util.dart';

class SplashScreem extends StatefulWidget {
  const SplashScreem({super.key});

  @override
  State<SplashScreem> createState() => _SplashScreemState();
}

class _SplashScreemState extends State<SplashScreem> {
  StringBuffer displayText = StringBuffer();
  int _currentIndex = 0;

  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTypingAnimation();
    // splashScreenTimeOut();
  }

  /*  void splashScreenTimeOut() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.of(context).pushReplacement(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) {
              return const HomeScreen();
            },
          ),
        );
      },
    );
  } */

  void _startTypingAnimation() {
    const typingSpeed = Duration(
      milliseconds: 150,
    );
    _timer = Timer.periodic(typingSpeed, (timer) {
      if (_currentIndex < jayJinendra.length) {
        setState(() {
          displayText.write(
            jayJinendra[_currentIndex],
          );

          _currentIndex++;
        });
      } else {
        _timer!.cancel();
        Future.delayed(
          const Duration(seconds: 1),
          () {
            Navigator.of(context).pushReplacement(
              PageRouteBuilder(
                transitionDuration: const Duration(
                  milliseconds: 700,
                ),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return FadeTransition(
                    opacity: animation,
                    child: child,
                  );
                },
                pageBuilder: (context, animation, secondaryAnimation) {
                  return const HomeScreen();
                },
              ),
            );
          },
        );
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: screenHeight(context),
        width: screenWidth(context),
        decoration: BoxDecoration(
          gradient: appBgGradient,
        ),
        child: Center(
          child: Text(
            displayText.toString(),
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 40,
            ),
          ),
        ),
      ),
    );
  }
}
