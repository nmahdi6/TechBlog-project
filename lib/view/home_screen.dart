import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tec/models/fake_data.dart';
import 'package:tec/my_colors.dart';
import 'package:tec/my_strings.dart';

import '../gen/assets.gen.dart';

SingleChildScrollView homeScreen(Size size, TextTheme textTheme, double bodyMargin) {
    return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0,8,0,0),
            child: Column(
              children: [
                homePagePoster(size: size,textTheme: textTheme,),

                const SizedBox(
                  height: 16,
                ),
                homePageTagList(bodyMargin: bodyMargin,textTheme: textTheme,),

                const SizedBox(
                  height: 26,
                ),
                seeMoreBlog(bodyMargin: bodyMargin,textTheme: textTheme,),

                homePageBlogList(size: size,bodyMargin: bodyMargin,textTheme: textTheme,), 

                const SizedBox(height: 20,),
                seeMorePodcast(bodyMargin: bodyMargin,textTheme: textTheme,),

                homePagePodcastList(size: size,bodyMargin: bodyMargin,textTheme: textTheme),

                 SizedBox(height: size.height/11,), 
              ],
            ),
          ),
        );
  }

class homePagePodcastList extends StatelessWidget {
  const homePagePodcastList({
    Key? key,
    required this.size,
    required this.bodyMargin, 
    required this.textTheme,
  }) : super(key: key);
  final Size size;
  final double bodyMargin;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 3.9,
      child: ListView.builder(
          itemCount: podcastList.getRange(0, 5).length,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            //blog item
            return Padding(
              padding: EdgeInsets.only(
                right: index == 0 ? bodyMargin : 20,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: size.height / 6.7,
                    width: size.width / 2.5,
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
    );
  }
}

class seeMorePodcast extends StatelessWidget {
  const seeMorePodcast({
    Key? key,
    required this.bodyMargin,
    required this.textTheme,
  }) : super(key: key);
  final double bodyMargin;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

class homePageBlogList extends StatelessWidget {
  const homePageBlogList({
    Key? key,
    required this.size,
    required this.bodyMargin,
    required this.textTheme,
  }) : super(key: key);
  final Size size;
  final double bodyMargin;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 3.9,
      child: ListView.builder(
          itemCount: blogList.getRange(0, 5).length,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            //blog item
            return Padding(
              padding:  EdgeInsets.only(right: index == 0 ? bodyMargin : 20,),
              child: Column(
                children: [
                  SizedBox(
                    height: size.height / 6.7,
                    width: size.width / 2.5,
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
    );
  }
}

class seeMoreBlog extends StatelessWidget {
  const seeMoreBlog({
    Key? key,
     required this.bodyMargin,
    required this.textTheme,
  }) : super(key: key);
  final double bodyMargin;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

class homePageTagList extends StatelessWidget {
  const homePageTagList({
    Key? key, 
    required this.bodyMargin,
    required this.textTheme,
  }) : super(key: key);
  final double bodyMargin;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}

class homePagePoster extends StatelessWidget {
  const homePagePoster({
    Key? key,
    required this.size,
    required this.textTheme,
  }) : super(key: key);

  final Size size; 
  final TextTheme textTheme; 

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
