import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tawla_app/config/app_colors.dart';
import 'package:tawla_app/widgets/CustomRowRes1.dart';
import 'package:tawla_app/widgets/EditBookingContent.dart';
import 'package:tawla_app/widgets/MainText.dart';

class CanceledRequestsScreen extends StatelessWidget {
  static String routeName = ' Canceled-Requests-Screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.ScaffoldBG,
        body: SingleChildScrollView(
            child: Directionality(
                textDirection: TextDirection.rtl,
                child: Column(
                  children: [
                    EditBookingContent(
                      keyword: 'complete',
                      num: 2,
                      widgetTwo: CustomRow(
                          image: 'assets/images/coin.png',
                          title: 'اونلاين',
                          subTitle: 'طريقة الدفع'),
                    ),
                    SizedBox(
                      height: 235,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 95,
                      margin: EdgeInsets.only(right: 25, left: 25, bottom: 30),
                      padding: EdgeInsets.only(right: 25, left: 25),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RegisterText(
                            text: 'سبب الغاء الطلب',
                            padding: EdgeInsets.only(top: 18, bottom: 8),
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            textColor: Colors.black,
                          ),
                          RegisterText(
                              fontSize: 12,
                              padding: EdgeInsets.all(0),
                              text:
                                  'تم إلغاء الطلب من قبل صاحب مطعم ديري كوين \nبسبب تأخرك لمدة 30 دقيقة عن موعد الحجز')
                        ],
                      ),
                    ),
                  ],
                ))));
  }
}
