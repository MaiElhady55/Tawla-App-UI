import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tawla_app/config/app_colors.dart';
import 'package:tawla_app/widgets/HeaderScreen.dart';
import 'package:tawla_app/widgets/HomeBody.dart';
import 'package:tawla_app/widgets/ResturantList.dart';

class FavoritesScreen extends StatelessWidget {
  static String routeName = 'Favorites-Screen';
  List<Map<String, dynamic>> details = [
    {
      'image': 'assets/images/res1.png',
      'type': 'مشويات',
      'name': 'مطعم ديري كوين',
      'tag': 'res1'
    },
    {
      'image': 'assets/images/res2.png',
      'type': 'مأكولات سريعة',
      'name': 'مطعم تاكو بيل',
      'tag': 'res2'
    },
    {
      'image': 'assets/images/res3.png',
      'type': 'مخبوزات',
      'name': 'مطعم أربيز',
      'tag': 'res3'
    },
    {
      'image': 'assets/images/res4.png',
      'type': 'أسماك',
      'name': 'مطعم طرح بحر',
      'tag': 'res4',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.ScaffoldBG,
            body: Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: HeaderScreen(
                          text: 'المفضلة',
                          padding: EdgeInsets.only(right: 95),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: details.length,
                            itemBuilder: (ctx, index) {
                              return ResturantList (
                                image: details[index]['image'],
                                name: details[index]['name'],
                                index: index,
                                type: details[index]['type'],
                                tag: details[index]['tag'],
                              );
                            }),
                      ),
                    ],
                  ),
                ))));
  }
}
