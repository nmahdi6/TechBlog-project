import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tec/gen/assets.gen.dart';
import 'package:tec/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const[
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const[
        Locale('fa',''), //farsi
      ],
      theme: ThemeData(
        textTheme: const TextTheme(
          // make hedline and bodytext

        )
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: splashScreen()),
    );
  }
}
