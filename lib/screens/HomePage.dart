import 'package:flutter/material.dart';
import 'package:tawla_app/config/app_colors.dart';
import 'package:tawla_app/screens/NotificationScreen.dart';
import 'package:tawla_app/screens/SearchScreen.dart';
import 'package:tawla_app/widgets/BottomSheetContent.dart';
import 'package:tawla_app/widgets/CustomTextField.dart';
import 'package:tawla_app/widgets/HomeBody.dart';

class HomePage extends StatefulWidget {
  static String roueName = 'Home-Page';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> details = [
    {'image': 'assets/images/food.PNG', 'type': '', 'name': '', 'tag': ''},
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
    },
  ];
  void showbottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        )),
        backgroundColor: Color.fromRGBO(246, 246, 247, 1),
        isDismissible: true,
        builder: (context) {
          return DraggableScrollableSheet(
            expand: false,
            initialChildSize: 0.4,
            maxChildSize: 0.6, //6
            minChildSize: 0.32,
            builder: (context, scrollController) {
              return SingleChildScrollView(
                  controller: scrollController, child: BottomSheetContent());
            },
          );
        });
  }

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
                SizedBox(height: 25),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => showbottomSheet(context),
                          child: Container(
                            width: 33,
                            height: 33,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/logo22.png'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(NotificationScreen.routeName);
                          },
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                width: 22,
                                height: 22,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/notif.png'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Positioned(
                                bottom: 13,
                                left: 11,
                                child: CircleAvatar(
                                    radius: 6,
                                    child: Text(
                                      '1',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    foregroundColor: Colors.white,
                                    backgroundColor: AppColors.Secondry),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: CustomTextField(
                          hintText: 'عاوز تاكل فين انهاردة',
                          textType: TextInputType.text,
                          padding: EdgeInsets.all(0),
                        ) ,
                    ),
                    Positioned(
                      left: 20,
                      child: GestureDetector(
                        onTap: (){
                        Navigator.of(context).pushNamed(SearchScreen.routeNabe);
                      },
                        child: CircleAvatar(
                          radius: 23,
                          child: Icon(
                            Icons.search,
                            size: 25,
                            color: Colors.white,
                          ),
                          backgroundColor: AppColors.MAIN,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: details.length,
                      itemBuilder: (ctx, index) {
                        return HomeBody(
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
          ),
        ),
      ),
    );
  }
}
