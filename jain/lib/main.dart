import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jain/constants/colors.dart';
import 'package:jain/screens/splash_screen.dart';
import 'package:syncfusion_localizations/syncfusion_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          systemNavigationBarContrastEnforced: false,
          systemNavigationBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.transparent,
          statusBarColor: Colors.transparent),
    );

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [SfGlobalLocalizations.delegate],
      supportedLocales: const [
        Locale('en'),
        Locale('hi'),
      ],
      locale: const Locale('fr'),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: darkBlueColor,
        ),
        useMaterial3: true,
      ),
      home: const SplashScreem(),
    );
  }
}
