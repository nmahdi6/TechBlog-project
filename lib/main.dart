import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'my_colors.dart';
import 'view/splash_screen.dart';

void main() {

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor:  SolidColors.statusBarColor,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: SolidColors.systemNavigationBarColor,
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
            color: SolidColors.posterTitle
          ),
          headline2: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: SolidColors.posterSubTitle
          ),
          headline3: TextStyle(
            fontFamily: 'dana',
            fontWeight: FontWeight.w700,
            fontSize: 15,
            color: SolidColors.seeMore
          ),
          headline4: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: SolidColors.textTitle
          ),
          subtitle1: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 14,
            color: SolidColors.posterSubTitle
          ),

        )
      ),
      debugShowCheckedModeBanner: false,
      home: const SafeArea(child: Scaffold(body: SplashScreen())),);
     // home: RegisterIntro()
     // );
  }
}
