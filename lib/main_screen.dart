import 'package:flutter/material.dart';
import 'gen/assets.gen.dart';
import 'models/fake_data.dart';
import 'my_colors.dart';


class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    double bodyMargin = size.width/12;
    // TODO: implement build
    return  SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // menu and serchbar
            Padding(
              padding: const EdgeInsets.only(top: 16,left: 15,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.menu),
                  Image(image: Assets.images.logo , height: size.height/13.6,),
                  const Icon(Icons.search),
                ],
              ),
            ),
            const SizedBox(height: 8,),
            Stack(
              children: [
                Container(
                  width: size.width/1.19,
                  height: size.height/4.6,
                  decoration:  BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                    image: DecorationImage(
                      image: AssetImage(homePagePosterMap["imageAsset"]),
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
                          Text(homePagePosterMap["writer"] + " - " + homePagePosterMap["data"],style: textTheme.subtitle1,),
                          Row(
                            children: [
                              Text(homePagePosterMap["view"],style: textTheme.subtitle1,),
                              const SizedBox(width: 8,),
                              const Icon(Icons.remove_red_eye_sharp,color: Colors.white,size: 16,),
                            ],
                          ),
                        ],
                      ),
                       const SizedBox(height: 6,),
                       Text("دوازده قدم برنامه نویسی یک دوره ی ...",style: textTheme.headline1,),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16,),
            //tag list
            SizedBox(
              height: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tagList.length,
                itemBuilder: ((context, index) {
                
                return Padding(
                  padding:  EdgeInsets.fromLTRB(0,8,index==0?bodyMargin:15,8),
                  child: Container(
                    height: 60,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(
                        colors: gradiantColors.tags,
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        ),


                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                      child: Row(
                        children: [
                          ImageIcon(Assets.icons.hashtag, color: Colors.white,size: 16,),
                          const SizedBox(width: 8,),
                          Text(tagList[index].title, style: textTheme.headline2,),
                        ],
                      ),
                    ),

                  ),
                );
              })),
            )
          ],
        ),
      ),
    );
  }
}
