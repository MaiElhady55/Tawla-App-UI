import 'package:flutter/material.dart';
import 'package:tawla_app/config/app_colors.dart';
import 'package:tawla_app/screens/SaveEditBooking.dart';
import 'package:tawla_app/widgets/EditBookingContent.dart';
import 'package:tawla_app/widgets/MainButton.dart';
import 'package:tawla_app/widgets/MainText.dart';

class AwaitingPaymentScreen extends StatelessWidget {
  static String routeName = ' Awaiting-Payment-Screen';
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
                      num: 1,
                      widgetOne: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RegisterText(
                            text: 'اختر طريفه الدفع',
                            padding: EdgeInsets.only(top: 15,right: 5),
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            textColor: Colors.black,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Radio(
                                    value: 1,
                                    groupValue: 1,
                                    onChanged: (v) {},
                                    toggleable: true,
                                    fillColor: MaterialStateProperty.all(
                                        AppColors.Secondry),
                                  ),
                                  RegisterText(
                                    text: 'اونلاين',
                                    fontSize: 12,
                                    textColor: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    padding: EdgeInsets.all(0),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                    value: 2,
                                    groupValue: 1,
                                    onChanged: (v) {},
                                    fillColor: MaterialStateProperty.all(
                                        Colors.black),
                                  ),
                                  RegisterText(
                                    text: 'محفظتي',
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    padding: EdgeInsets.all(0),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 260),
                    MainButton(
                      text: 'الدفع',
                      function: () {},
                      padding: 25,
                      height: 45,
                      fontSize: 14,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ))));
  }
}
