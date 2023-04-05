import 'package:flutter/material.dart';
import 'package:tawla_app/config/app_colors.dart';
import 'package:tawla_app/widgets/CustomCard.dart';
import 'package:tawla_app/widgets/HeaderScreen.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);
  static String routeName = 'Notification-Screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.ScaffoldBG,
            body: SingleChildScrollView(
                child: Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    HeaderScreen(
                      text: 'الاشعارات',
                      padding: EdgeInsets.only(right: 80),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomCard(
                      text:
                          'وافق مطعم ديري كوين على طلب الحجز الخاص بك\n رقم 15537',
                      image: 'notif',
                      imageColor: AppColors.MAIN,
                      imageSize: 12,
                    ),
                    CustomCard(
                      text:
                          'وافق مطعم ديري كوين على طلب الحجز الخاص بك\n رقم 15537',
                      image: 'notif',
                      imageColor: AppColors.MAIN,
                      imageSize: 12,
                    ),
                    CustomCard(
                      text:
                          'تم إنهاء طلب الحجز الخاص بك رقم 62293 من مطعم\n ديري كوين',
                      image: 'notif',
                      imageColor: AppColors.MAIN,
                      imageSize: 12,
                    ),
                    CustomCard(
                      text:
                          'تم إلغاء طلب الحجز الخاص بك رقم 62293 من مطعم\n ديري كوين بسبب عدم تأكيد الحجز من قبل المطعم',
                      image: 'notif',
                      imageColor: AppColors.MAIN,
                      imageSize: 12,
                    ),
                    CustomCard(
                      imageColor: AppColors.MAIN,
                      imageSize: 12,
                      image: 'notif',
                      text:
                          'تم إلغاء طلب الحجز الخاص بك رقم 62293 من مطعم\n ديري كوين بسبب عدم دفع مبلغ تأكيد الحجز',
                    ),
                    CustomCard(
                      imageColor: AppColors.MAIN,
                      imageSize: 12,
                      image: 'notif',
                      text:
                          'وافق مطعم ديري كوين على طلب الحجز الخاص بك\n رقم 15537',
                    ),
                    CustomCard(
                      imageColor: AppColors.MAIN,
                      imageSize: 12,
                      image: 'notif',
                      text:
                          'وافق مطعم ديري كوين على طلب الحجز الخاص بك\n رقم 15537',
                    ),
                  ],
                ),
              ),
            ))));
  }
}
