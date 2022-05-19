import 'package:flutter/material.dart';
import '../gen/assets.gen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'main_screen.dart';
import '../my_colors.dart';

class splashScreen extends StatefulWidget {
  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {

  @override
  void initState(){

    Future.delayed(const Duration(seconds: 1)).then((value){

      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: ((context) => MainScreen())
        ));

    });

    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: Assets.images.logo,
              height: 64,
            ),
            const SizedBox(height: 20,),
            const SpinKitFadingCube(
              color: solidColors.primeryColor,
              size: 32.0,
            )
          ],
        ),
      ),
    );
  }
}
