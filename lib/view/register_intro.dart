import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tec/gen/assets.gen.dart';
import 'package:tec/my_colors.dart';
import 'package:tec/my_strings.dart';

class RegisterIntro extends StatelessWidget {
  const RegisterIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Assets.images.tcbot,
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: MyStrings.welcom, style: textTheme.headline4)),
              ),
              //ElevatedButton
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                     builder: ((context){
                       return Padding(
                         padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                         child: Container(
                           height: size.height/2.5,
                           decoration: const BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.only(
                               topLeft: Radius.circular(30),
                               topRight: Radius.circular(30),
                               )
                           ),
                         child: Center(
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text(MyStrings.insertYourEmail,style: textTheme.headline4,),
                               Padding(
                                 padding: const EdgeInsets.all(30),
                                 child: TextField(
                                   textAlign: TextAlign.center,
                                   decoration: InputDecoration(
                                     hintText: "nmahdi6@gmail.com",
                                     hintStyle: textTheme.headline5
                                   ),
                                 ),
                               )
                               ,ElevatedButton(onPressed: (() {
                                 
                               }), child: 
                               const Text("ادامه")
                               )

                             ],
                           ),
                         ),
                         ),
                       );
                     })
                     );
                  },
                  child: const Text("بزن بریم"),
                 
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
