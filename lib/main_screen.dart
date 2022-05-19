import 'package:flutter/material.dart';
import 'package:tec/my_strings.dart';
import 'gen/assets.gen.dart';
import 'models/fake_data.dart';
import 'my_colors.dart';

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
          title:  Padding(
                  padding: const EdgeInsets.only(top: 16, left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.menu,color: Colors.black,),
                      Image(
                        image: Assets.images.logo,
                        height: size.height / 13.6,
                      ),
                      const Icon(Icons.search,color: Colors.black,),
                    ],
                  ),
                ),
        ),
        body: Stack(
          children: [
            //body
            SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0,8,0,0),
              child: Column(
                children: [
                 // poster
                  Stack(
                    children: [
                      Container(
                        width: size.width / 1.19,
                        height: size.height / 5.2,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(16)),
                          image: DecorationImage(
                              image: AssetImage(homePagePosterMap["imageAsset"]),
                              fit: BoxFit.cover),
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
                              children: [
                                Text(
                                  homePagePosterMap["writer"] +
                                      " - " +
                                      homePagePosterMap["data"],
                                  style: textTheme.subtitle1,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      homePagePosterMap["view"],
                                      style: textTheme.subtitle1,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Icon(
                                      Icons.remove_red_eye_sharp,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              "دوازده قدم برنامه نویسی یک دوره ی ...",
                              style: textTheme.headline1,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  //tag list
                  SizedBox(
                    height: 60,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: tagList.length,
                        itemBuilder: ((context, index) {
                          return Padding(
                            padding: EdgeInsets.fromLTRB(
                                0, 8, index == 0 ? bodyMargin : 15, 8),
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
                                    ImageIcon(
                                      Assets.icons.hashtag,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      tagList[index].title,
                                      style: textTheme.headline2,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        })),
                  ),
                  //
                  const SizedBox(
                    height: 26,
                  ),
                  //see more
                  Padding(
                    padding: EdgeInsets.only(right: bodyMargin, bottom: 16),
                    child: Row(
                      children: [
                        ImageIcon(
                          Assets.icons.bluePen,
                          color: solidColors.seeMore,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          myStrings.viewHotestBlog,
                          style: textTheme.headline3,
                        ),
                      ],
                    ),
                  ),
                  //blog list
                  SizedBox(
                    height: size.height / 3.9,
                    child: ListView.builder(
                        itemCount: blogList.getRange(0, 5).length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: ((context, index) {
                          //blog item
                          return Padding(
                            padding:  EdgeInsets.only(right: index == 0 ? bodyMargin : 15,),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: size.height / 6.7,
                                  width: size.width / 2.7,
                                  child: Stack(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: const BorderRadius.all(
                                                Radius.circular(16)),
                                            image: DecorationImage(
                                              image:
                                                  NetworkImage(blogList[index].imageUrl),
                                              fit: BoxFit.cover,
                                            )),
                                        foregroundDecoration: const BoxDecoration(
                                          borderRadius:
                                              BorderRadius.all(Radius.circular(16)),
                                          gradient: LinearGradient(
                                              begin: Alignment.bottomCenter,
                                              end: Alignment.topCenter,
                                              colors: gradiantColors.blogPost),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 10,
                                        left: 0,
                                        right: 0,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              blogList[index].writer ,
                                              style: textTheme.subtitle1,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                   blogList[index].views,
                                                  style: textTheme.subtitle1,
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                const Icon(
                                                  Icons.remove_red_eye_sharp,
                                                  color: Colors.white,
                                                  size: 16,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7 , right: 3),
                                  child: SizedBox(
                                    width: size.width/2.4 - 5,
                                    child: Text(blogList[index].title,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,style: textTheme.headline4,),
                                    ),
                                ),
                              ],
                            ),
                          );
                        })),
                  ),
                   
                  //podcast title
                  Padding(
                    padding: EdgeInsets.only(right: bodyMargin, bottom: 16),
                    child: Row(
                      children: [
                        ImageIcon(
                          Assets.icons.microphon,
                          color: solidColors.seeMore,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          myStrings.viewHotestPodcasts,
                          style: textTheme.headline3,
                        ),
                      ],
                    ),
                  ),
                  //podcast
                  SizedBox(
                    height: size.height / 3.9,
                    child: ListView.builder(
                        itemCount: podcastList.getRange(0, 5).length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: ((context, index) {
                          //blog item
                          return Padding(
                            padding: EdgeInsets.only(
                              right: index == 0 ? bodyMargin : 15,
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: size.height / 6.7,
                                  width: size.width / 2.7,
                                  child: Stack(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: const BorderRadius.all(
                                                Radius.circular(16)),
                                            image: DecorationImage(
          
          
          
                                              image: NetworkImage(
                                                  podcastList[index].imageUrl),
                                              fit: BoxFit.cover,
                                            )),
                                        foregroundDecoration: const BoxDecoration(
                                          borderRadius:
                                              BorderRadius.all(Radius.circular(16)),
                                          gradient: LinearGradient(
                                              begin: Alignment.bottomCenter,
                                              end: Alignment.topCenter,
                                              colors: gradiantColors.blogPost),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 10,
                                        left: 0,
                                        right: 0,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              podcastList[index].writer,
                                              style: textTheme.subtitle1,
                                            ),
                                            
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7, right: 3),
                                  child: SizedBox(
                                    width: size.width / 2.4 - 4,
                                    child: Text(
                                      podcastList[index].title,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: textTheme.headline4,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        })),
                  ),
                   
                ],
              ),
            ),
          ),
            //bottom nav
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                      height: size.height/10,
                      decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: gradiantColors.bottomNavBackgroand,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                
              ),
              
                      ),
                      child: Padding(
              padding: const EdgeInsets.only(right: 20 , left: 20),
              child: Container(
                height: size.height/8,
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
                  IconButton(onPressed: (() {
                  }),
                   icon: ImageIcon(Assets.icons.home,color: Colors.white,
                   )),
                  IconButton(onPressed: (() {
                  }),
                   icon: ImageIcon(Assets.icons.write,color: Colors.white,
                   )),
                  IconButton(onPressed: (() {
                  }),
                   icon: ImageIcon(Assets.icons.user,color: Colors.white,
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
