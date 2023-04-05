import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tawla_app/config/app_colors.dart';
import 'package:tawla_app/screens/LocationScreen.dart';
import 'package:tawla_app/widgets/CustomTextField.dart';
import 'package:tawla_app/widgets/HeaderScreen.dart';
import 'package:tawla_app/widgets/ResturantList.dart';

class SearchScreen extends StatelessWidget {
  static String routeNabe = 'Search-Screen';
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
                          text: 'البحث',
                          padding: EdgeInsets.only(right: 95),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                  child: CustomTextField(
                                hintText: 'اسم المطعم/الكافية',
                                height: 42,
                                textType: TextInputType.text,
                                padding: const EdgeInsets.only(
                                  left: 4.5,
                                ),
                              )),
                            ),
                            Expanded(
                              child: Container(
                                  child: CustomTextField(
                                height: 42,
                                hintText: 'التصنيف',
                                padding:
                                    const EdgeInsets.only(left: 10, right: 4.5),
                                textType: TextInputType.text,
                                icon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_drop_down,
                                    color: Color(0xff868686),
                                  ),
                                ),
                              )),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(LocationScreen.routeName);
                              },
                              child: CircleAvatar(
                                radius: 21,
                                backgroundColor: AppColors.MAIN,
                                child: Image.asset(
                                  'assets/images/locationicon.png',
                                  width: 16,
                                  height: 16,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: details.length,
                            itemBuilder: (ctx, index) {
                              return ResturantList(
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
    ;
  }
}
