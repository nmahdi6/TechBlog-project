import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tec/models/fake_data.dart';
import 'package:tec/my_colors.dart';
import 'package:tec/my_component.dart';
import 'package:tec/my_strings.dart';
import '../gen/assets.gen.dart';

SingleChildScrollView profileScreen(Size size, TextTheme textTheme, double bodyMargin) {
    return  SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50,),
              Image(image: Assets.images.profileAvatar,height: 100,),
              const SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(Assets.icons.bluePen,color: solidColors.seeMore,),
                  const SizedBox(width: 8,),
                  Text(
                    myStrings.imageProfileEdit,
                    style: textTheme.headline3
                  ),
                ],
              ),
              const SizedBox(height: 60,),
              Text("فاطمه امیری",style: textTheme.headline4,),
              const SizedBox(height: 15,),
              Text("nmahdi600@gmail.com",style: textTheme.headline3,),
              const SizedBox(height: 40,),
              techDivider(size: size,),
              InkWell(
                onTap: () {
                  // code
                },
                splashColor: solidColors.primeryColor,
                child: SizedBox(
                  height: 45,
                  child: Center(child: Text( myStrings.myFavBlog,style: textTheme.headline4,))),
              ),
              techDivider(size: size,),
              InkWell(
                onTap: () {
                  // code
                },
                splashColor: solidColors.primeryColor,
                child: SizedBox(
                  height: 45,
                  child: Center(child: Text( myStrings.myFavPodecast,style: textTheme.headline4,))),
              ),
              techDivider(size: size,),
              InkWell(
                onTap: () {
                  // code
                },
                splashColor: solidColors.primeryColor,
                child: SizedBox(
                  height: 45,
                  child: Center(child: Text( myStrings.logOut,style: textTheme.headline4,))),
              ),
              const SizedBox(height: 60,),
            ],
            
          ),
          );
  }
