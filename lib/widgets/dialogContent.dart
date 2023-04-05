import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tawla_app/config/app_colors.dart';
import 'package:tawla_app/screens/MobileCodeSreen.dart';
import 'package:tawla_app/widgets/MainButton.dart';
import 'package:tawla_app/widgets/MainText.dart';

class DialogContent extends StatelessWidget {
  const DialogContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 200,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RegisterText(
                text: 'اين تريد ارسال كود التفعيل؟',
                fontWeight: FontWeight.w700,
                mainAxisAlignment: MainAxisAlignment.center,
                padding: EdgeInsets.only(top: 50),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 18,
                      ),
                      RegisterText(
                        text: 'البريد الالكتروني',
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        padding: EdgeInsets.all(0),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Radio(
                          value: 2,
                          groupValue: 1,
                          onChanged: (v) {},
                        ),
                      ),
                      RegisterText(
                        text: 'رقم الجوال',
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        padding: EdgeInsets.all(0),
                      ),
                      Radio(
                        value: 1,
                        groupValue: 1,
                        onChanged: (v) {},
                        toggleable: true,
                        fillColor:
                            MaterialStateProperty.all(AppColors.Secondry),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              MainButton(
                text: 'ارسال',
                height: 40,
                padding: 18,
                function: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) {
                      return MobileCodeSreen();
                    },
                  ));
                },
              ),
            ],
          ),
        ),
        Positioned(
            right: 100,
            top: -36,
            child: Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.cover,
              width: 55,
              height: 70,
            ))
      ],
    );
  }
}
