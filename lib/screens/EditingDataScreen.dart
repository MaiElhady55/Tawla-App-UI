import 'package:flutter/material.dart';
import 'package:tawla_app/config/app_colors.dart';
import 'package:tawla_app/screens/ChangePasswordScreen.dart';
import 'package:tawla_app/screens/HomePage.dart';
import 'package:tawla_app/widgets/CustomTextField.dart';
import 'package:tawla_app/widgets/HeaderScreen.dart';
import 'package:tawla_app/widgets/MainButton.dart';
import 'package:tawla_app/widgets/MainText.dart';

class EditingDataScreen extends StatelessWidget {
  const EditingDataScreen({Key? key}) : super(key: key);

  static String routeName = 'Editing-Data-Screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.ScaffoldBG,
            body: SingleChildScrollView(
                child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Column(children: [
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: HeaderScreen(
                          text: 'تعديل بياناتي الشخصية',
                          padding: EdgeInsets.only(
                            right: 40,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Center(
                          child: Stack(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 55,
                            backgroundImage:
                                AssetImage('assets/images/user.png'),
                          ),
                          Positioned(
                            top: 77,
                            child: CircleAvatar(
                                radius: 13,
                                backgroundColor: AppColors.Secondry,
                                child: Image.asset(
                                  'assets/images/photo.png',
                                  width: 15,
                                  height: 14,
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ],
                      )),
                      SizedBox(
                        height: 35,
                      ),
                      RegisterText(
                        text: ' الاسم',
                      ),
                      CustomTextField(
                        textType: TextInputType.name,
                        hintText: 'رقية مجدي',
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      RegisterText(
                        text: 'البريد الالكتروني',
                      ),
                      CustomTextField(
                        textType: TextInputType.emailAddress,
                        hintText: 'info@gmail.com',
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      RegisterText(text: 'رقم الجوال'),
                      CustomTextField(
                          hintText: '01123456789',
                          textType: TextInputType.phone),
                      SizedBox(
                        height: 30,
                      ),
                      MainButton(
                        text: 'حفظ التعديل',
                        function: () {
                          Navigator.of(context).pushNamed(HomePage.roueName);
                        },
                        height: 45,
                        fontSize: 14,
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(ChangePasswordScreen.routeName);
                          },
                          child: RegisterText(
                            text: 'هل تريد تغير كلمة المرور؟',
                            fontSize: 12,
                            textAlign: TextAlign.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            padding: EdgeInsets.all(0),
                          )),
                      SizedBox(
                        height: 20,
                      )
                    ])))));
  }
}
