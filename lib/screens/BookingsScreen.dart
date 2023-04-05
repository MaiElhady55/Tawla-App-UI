import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tawla_app/config/app_colors.dart';
import 'package:tawla_app/screens/TabBarScreens/ScreenFive.dart';
import 'package:tawla_app/screens/TabBarScreens/ScreenFour.dart';
import 'package:tawla_app/screens/TabBarScreens/ScreenOne.dart';
import 'package:tawla_app/screens/TabBarScreens/ScreenThree.dart';
import 'package:tawla_app/screens/TabBarScreens/ScreenTwo.dart';
import 'package:tawla_app/widgets/HeaderScreen.dart';
import 'package:tawla_app/widgets/MainText.dart';

class BookingsScreen extends StatefulWidget {
  static String routeName = 'Bookings -Screen';

  @override
  State<BookingsScreen> createState() => _BookingsScreenState();
}

class _BookingsScreenState extends State<BookingsScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.ScaffoldBG,
            body: DefaultTabController(
              length: 5,
              initialIndex: selectedIndex,
              child: SingleChildScrollView(
                  child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(children: [
                            SizedBox(
                              height: 40,
                            ),
                            HeaderScreen(
                              text: 'حجوزاتي',
                              padding: EdgeInsets.only(
                                right: 80,
                              ),
                            ),
                            Container(
                                alignment: Alignment.centerLeft,
                                child: TabBar(
                                  onTap: (index) {
                                    setState(() {
                                      selectedIndex = index;
                                    });
                                  },
                                  isScrollable: true,
                                  indicatorColor: AppColors.Secondry,
                                  indicatorWeight: 1.1,
                                  indicatorPadding: EdgeInsets.only(bottom: 4),
                                  indicatorSize: TabBarIndicatorSize.tab,
                                  labelColor: Colors.black,
                                  labelStyle: TextStyle(
                                      fontFamily: 'tajawal',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                  unselectedLabelColor:
                                      Color(0xff6F6F6F).withOpacity(0.8),
                                  unselectedLabelStyle: TextStyle(
                                      fontFamily: 'tajawal',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                  tabs: [
                                    Tab(
                                      text: 'الطلبات الجديدة',
                                    ),
                                    Tab(
                                      text: 'في انتظار الدفع',
                                    ),
                                    Tab(
                                      text: 'الطلبات الجارية',
                                    ),
                                    Tab(
                                      text: 'الطلبات المكتملة',
                                    ),
                                    Tab(
                                      text: 'الطلبات الملغاة',
                                    )
                                  ],
                                )),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height *
                                  0.85, 
                              padding: EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 20),
                              child: TabBarView(
                                children: [
                                  ScreenOne(),
                                  ScreenTwo(),
                                  ScreenThree(),
                                  ScreenFour(),
                                  ScreenFive()
                                ],
                              ),
                            ),
                          ])))),
            )));
  }
}
