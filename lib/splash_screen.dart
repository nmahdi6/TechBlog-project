import 'package:flutter/material.dart';
import 'package:tec/gen/assets.gen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tec/my_colors.dart';

class splashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
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
      ),
    );
  }
}
