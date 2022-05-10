import 'package:flutter/material.dart';
import 'package:tec/gen/assets.gen.dart';
import 'package:tec/my_colors.dart';


class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    // TODO: implement build
    return  SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 16,left: 15,right: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.menu),
                  Image(image: Assets.images.logo , height: size.height/13.6,),
                  const Icon(Icons.search),
                ],
              ),
              const SizedBox(height: 8,),
              Stack(
                children: [
                  Container(
                    width: size.width/1.25,
                    height: size.height/4.2,
                    decoration:  BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      image: DecorationImage(image: Image(image: Assets.images.programming).image,
                      fit: BoxFit.cover
                      ),
                    ),
                    foregroundDecoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      gradient: LinearGradient(
                        colors: gradiantColors.homePosterCoverGradiant,
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children:  [
                            Text("ملیکا عزیزی - یک روز پیش",style: textTheme.subtitle1,),
                            Text("Like 256",style: textTheme.subtitle1,),
                          ],
                        ),
                         const SizedBox(height: 6,),
                         Text("دوازده قدم برنامه نویسی یک دوره ی ...",style: textTheme.headline1,),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
