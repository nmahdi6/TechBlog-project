import 'package:flutter/material.dart';
import 'package:tec/component/my_colors.dart';
import 'package:tec/view/home_screen.dart';
import 'package:tec/view/profile_screen.dart';
import '../gen/assets.gen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}
final GlobalKey<ScaffoldState> _key = GlobalKey();

class _MainScreenState extends State<MainScreen> {
  var selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    double bodyMargin = size.width / 12;

    return SafeArea(
        child: Scaffold(
          key: _key,
      //drawer
      drawer: Drawer(
        backgroundColor: SolidColors.scafoldBg,
        child: Padding(
          padding: EdgeInsets.only(right: bodyMargin, left: bodyMargin),
          child: ListView(
            children: [
              DrawerHeader(
                child: Image.asset(
                  Assets.images.logo.path,
                  scale: 3,
                ),
              ),
              ListTile(
                title: Text(
                  "پروفایل کاربری",
                  style: textTheme.headline4,
                ),
                onTap: () {},
              ),
              const Divider(
                color: SolidColors.dividerColor,
              ),
              ListTile(
                title: Text(
                  "درباره ی تک بلاگ",
                  style: textTheme.headline4,
                ),
                onTap: () {},
              ),
              const Divider(
                color: SolidColors.dividerColor,
              ),
              ListTile(
                title: Text(
                  "اشتراک گذاری تک بلاگ",
                  style: textTheme.headline4,
                ),
                onTap: () {},
              ),
              const Divider(
                color: SolidColors.dividerColor,
              ),
              ListTile(
                title: Text(
                  "تک بلاگ در گیت هاب",
                  style: textTheme.headline4,
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      //appbar
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: SolidColors.scafoldBg,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(top: 16, left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  _key.currentState!.openDrawer();
                },
                child: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
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
          Center(
              child: IndexedStack(
            index: selectedPageIndex,
            children: [
              homeScreen(size, textTheme, bodyMargin),
              profileScreen(size, textTheme, bodyMargin),
            ],
          )),
          //bottom nav
          BottomNav(
            size: size,
            bodyMargin: bodyMargin,
            changeScreen: (int value) {
              setState(() {
                selectedPageIndex = value;
              });
            },
          ),
        ],
      ),
    ));
  }
}

class BottomNav extends StatelessWidget {
  const BottomNav({
    Key? key,
    required this.size,
    required this.bodyMargin,
    required this.changeScreen,
  }) : super(key: key);

  final Size size;
  final double bodyMargin;
  final Function(int) changeScreen;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        height: size.height / 11,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: GradiantColors.bottomNavBackgroand,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding:
              EdgeInsets.only(right: bodyMargin, left: bodyMargin, bottom: 10),
          child: Container(
            height: size.height / 8,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(24)),
              gradient: LinearGradient(
                colors: GradiantColors.bottomNav,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: (() => changeScreen(0)),
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
                    onPressed: (() => changeScreen(1)),
                    icon: ImageIcon(
                      Assets.icons.user,
                      color: Colors.white,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
