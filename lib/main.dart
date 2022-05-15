import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'my_colors.dart';
import 'splash_screen.dart';

void main() {

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor:  solidColors.statusBarColor,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: solidColors.systemNavigationBarColor,
    systemNavigationBarIconBrightness: Brightness.dark,
    ));

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
        fontFamily: 'Roboto',
        brightness: Brightness.light,
        textTheme: const TextTheme(
          // make hedline and bodytext
          headline1: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: solidColors.posterTitle
          ),
          headline2: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: solidColors.posterSubTitle
          ),
          headline3: TextStyle(
            fontFamily: 'dana',
            fontWeight: FontWeight.w700,
            fontSize: 15,
            color: solidColors.seeMore
          ),
          headline4: TextStyle(
            fontFamily: 'dana',
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: solidColors.textTitle
          ),
          subtitle1: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 14,
            color: solidColors.posterSubTitle
          ),

        )
      ),
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: Scaffold(body: splashScreen())),
    );
  }
}
