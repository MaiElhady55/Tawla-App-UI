import 'package:flutter/material.dart';
import 'package:tawla_app/config/app_colors.dart';
import 'package:tawla_app/screens/SaveEditBooking.dart';
import 'package:tawla_app/widgets/CustomRowRes1.dart';
import 'package:tawla_app/widgets/EditBookingContent.dart';
import 'package:tawla_app/widgets/MainButton.dart';
import 'package:tawla_app/widgets/MainText.dart';

class EditBookingScreen extends StatelessWidget {
  const EditBookingScreen({Key? key}) : super(key: key);
  static String routeName = 'Edit=Booking=Screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.ScaffoldBG,
        body: SingleChildScrollView(
            child: Directionality(
                textDirection: TextDirection.rtl,
                child: Column(
                  children: [
                    EditBookingContent(),
                    SizedBox(
                      height: 180,
                    ),
                    MainButton(
                      text: 'تعديل الحجز',
                      function: () {
                        Navigator.of(context)
                              .pushNamed(SaveEditBooking.routeName);
                      },
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
