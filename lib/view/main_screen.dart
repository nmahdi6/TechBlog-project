import 'package:flutter/material.dart';
import 'package:tec/my_strings.dart';
import 'package:tec/view/home_screen.dart';
import '../gen/assets.gen.dart';
import '../models/fake_data.dart';
import '../my_colors.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    double bodyMargin = size.width / 12;
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
      //appbar
      appBar: AppBar(
        backgroundColor: solidColors.scafoldBg,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(top: 16, left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              Image(
                image: Assets.images.logo,
                height: size.height / 13.6,
              ),
              const Icon(
                Icons.search,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          //body
          homeScreen(size, textTheme, bodyMargin),
          //bottom nav
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: size.height / 11,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: gradiantColors.bottomNavBackgroand,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(right: bodyMargin, left: bodyMargin , bottom: 10),
                child: Container(
                  height: size.height / 8,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                    gradient: LinearGradient(
                      colors: gradiantColors.bottomNav,
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: (() {}),
                          icon: ImageIcon(
                            Assets.icons.home,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: (() {}),
                          icon: ImageIcon(
                            Assets.icons.write,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: (() {}),
                          icon: ImageIcon(
                            Assets.icons.user,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
