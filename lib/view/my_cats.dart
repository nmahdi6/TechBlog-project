import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tec/component/my_colors.dart';
import 'package:tec/component/my_component.dart';
import 'package:tec/component/my_strings.dart';
import 'package:tec/gen/assets.gen.dart';
import 'package:tec/models/data_models.dart';
import 'package:tec/models/fake_data.dart';

class MyCats extends StatefulWidget {
  @override
  State<MyCats> createState() => _MyCatsState();
}

class _MyCatsState extends State<MyCats> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    double bodyMargin = size.width / 10;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(right: bodyMargin, left: bodyMargin),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 32,
                ),
                SvgPicture.asset(
                  Assets.images.tcbot,
                  height: 100,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  MyStrings.successfulRegistration,
                  style: textTheme.headline4,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      alignLabelWithHint: true,
                      hintText: "نام و نام خانوادگی",
                      helperStyle: textTheme.headline4),
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  MyStrings.chooseCats,
                  style: textTheme.headline4,
                ),
                const SizedBox(
                  height: 32,
                ),
                // taglist
                SizedBox(
                  width: double.infinity,
                  height: 85,
                  child: GridView.builder(
                      physics: const ClampingScrollPhysics(),
                      itemCount: tagList.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 5,
                              crossAxisCount: 2,
                              childAspectRatio: 0.3),
                      itemBuilder: ((context, index) {
                        return InkWell(
                            onTap: (() {
                              setState(() {
                                if(!selectedTags.contains(tagList[index])){
                                  selectedTags.add(tagList[index]);
                                }
                              });
                            }),
                            child:
                                MainTags(textTheme: textTheme, index: index));
                      })),
                ),
                const SizedBox(
                  height: 32,
                ),
                Image.asset(
                  Assets.icons.down_cat_arrow.path,
                  scale: 3,
                ),
                const SizedBox(
                  height: 32,
                ),

                // selected tags
                SizedBox(
                  width: double.infinity,
                  height: 85,
                  child: GridView.builder(
                      physics: const ClampingScrollPhysics(),
                      itemCount: selectedTags.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 5,
                              crossAxisCount: 2,
                              childAspectRatio: 0.2),
                      itemBuilder: ((context, index) {
                        return Container(
                          height: 60,
                          decoration:  const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                            color: SolidColors.surface
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: Text(
                                    selectedTags[index].title,
                                    style: textTheme.headline4,
                                  ),
                                ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        selectedTags.removeAt(index);
                                      });
                                    },
                                    child: const Icon(CupertinoIcons.delete,color: Colors.grey,size: 20,)),
                               
                              ],
                            ),
                          ),
                        );
                      })),
                ),
                
                const SizedBox(
                  height: 32,
                ),

                ElevatedButton(
                        onPressed: (() {
                         // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: ((context) => MyCats())));
                        }), child: const Text("ادامه"))
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
