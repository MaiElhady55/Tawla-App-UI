import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tawla_app/config/app_colors.dart';
import 'package:tawla_app/screens/BookingsScreen.dart';
import 'package:tawla_app/screens/MobileCodeSreen.dart';
import 'package:tawla_app/widgets/MainButton.dart';
import 'package:tawla_app/widgets/MainText.dart';
import 'package:tawla_app/widgets/NotesContent.dart';

class CanceledDialogt extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 260,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RegisterText(
                    text: 'مطعم ديري كوين',
                    fontWeight: FontWeight.w700,
                    textAlign: TextAlign.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    padding: EdgeInsets.only(top: 35,bottom: 15),
                  ),
                  RegisterText(text: 'سبب الالغاء',padding: EdgeInsets.only(bottom: 8,right: 12),),
                  NotesContent(
                    color: Colors.white,
                  ),
                  SizedBox(height: 15,),
                  MainButton(
                    text: 'ارسال',
                    height: 40,
                    padding: 0,
                    function: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>BookingsScreen() )
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              right: 96,
              top: -35,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  'assets/images/resone.png',
                  fit: BoxFit.cover,
                  width: 62,
                  height: 60,
                ),
              ))
        ],
      ),
    );
  }
}
