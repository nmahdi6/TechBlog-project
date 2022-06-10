import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tec/gen/assets.gen.dart';
import 'package:tec/my_strings.dart';

class MyCats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    double bodyMargin = size.width/10;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding:  EdgeInsets.only(right: bodyMargin , left: bodyMargin),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 32,),
                SvgPicture.asset(Assets.images.tcbot,height: 100,),
                const SizedBox(height: 16,),
                Text(MyStrings.successfulRegistration,style: textTheme.headline4,),
                const SizedBox(height: 16,),
                  TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    hintText: "نام و نام خانوادگی",
                    helperStyle: textTheme.headline4
                    ),
                ),
                const SizedBox(height: 16,),
                Text(MyStrings.chooseCats,style: textTheme.headline4,),
                const SizedBox(height: 32,),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
