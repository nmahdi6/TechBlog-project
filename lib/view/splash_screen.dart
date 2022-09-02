import 'package:flutter/material.dart';
import '../component/my_colors.dart';
import '../gen/assets.gen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){

    Future.delayed(const Duration(seconds: 1)).then((value){

      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: ((context) =>  MainScreen())
        ));

    });

    super.initState();
  }



  @override
  Widget build(BuildContext context) {
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
              color: SolidColors.primeryColor,
              size: 32.0,
            )
          ],
        ),
      ),
    );
  }
}
