import 'package:flutter/material.dart';
import 'package:tawla_app/config/app_colors.dart';
import 'package:tawla_app/widgets/CanceledDialog.dart';
import 'package:tawla_app/widgets/CustomRowRes1.dart';
import 'package:tawla_app/widgets/EditBookingContent.dart';
import 'package:tawla_app/widgets/MainButton.dart';
import 'package:tawla_app/widgets/MainText.dart';

class OnGoingRequestsScreen extends StatelessWidget {
  static String routeName = ' OnGoing-Requests-Screen';

  canceledBookingDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        barrierColor: Colors.black26,
        builder: (ctx) {
          return AlertDialog(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)),
            backgroundColor: Color(0xffF7F7F7),
            content:CanceledDialogt(),
          );
        });
  }
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
                    SizedBox(height: 250),
                    MainButton(
                      text: 'تاكيد انتهاء الحجز',
                      function: () {},
                      padding: 25,
                      height: 45,
                      fontSize: 14,
                    ),Padding(
                        padding: const EdgeInsets.only(bottom: 8,top: 15),
                        child: MainButton(
                          text: 'الغاء الحجز',
                          function: ()=>canceledBookingDialog(context),
                          color: Colors.white,
                          textColor: AppColors.MAIN,
                          padding: 25,
                          height: 45,
                          fontSize: 14,
                        ),
                      ),
                    RegisterText(
                      textAlign: TextAlign.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      text: 'لا تتأخر عن معاد حجزك! يحق للمطعم إلغاء الحجز في حالة\n تأخرك عن موعد الحجز لمدة 30 دقيقة')
                  ],
                ))));
  }
}
