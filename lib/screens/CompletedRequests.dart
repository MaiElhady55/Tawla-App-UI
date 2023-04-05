import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tawla_app/config/app_colors.dart';
import 'package:tawla_app/widgets/CustomRowRes1.dart';
import 'package:tawla_app/widgets/EditBookingContent.dart';

class CompletedRequestsScreen extends StatelessWidget {
  static String routeName = ' Completed-Requests-Screen';
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
                    ),SizedBox(height: 280,)
                  ],
                ))));
  }
}
