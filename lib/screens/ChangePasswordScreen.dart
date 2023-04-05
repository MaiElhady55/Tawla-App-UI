import 'package:flutter/material.dart';
import 'package:tawla_app/config/app_colors.dart';
import 'package:tawla_app/widgets/CustomTextField.dart';
import 'package:tawla_app/widgets/HeaderScreen.dart';
import 'package:tawla_app/widgets/MainButton.dart';
import 'package:tawla_app/widgets/MainText.dart';

class ChangePasswordScreen extends StatefulWidget {
  static String routeName = 'Change-Password-Screen';

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  bool isVisible = true;
  bool isVisible2 = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.ScaffoldBG,
            body: SingleChildScrollView(
                child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: ExactAssetImage(
                                    'assets/images/transbackground.png'),
                                fit: BoxFit.cover)),
                        child: Column(children: [
                          SizedBox(
                            height: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: HeaderScreen(
                              text: 'تغيير كلمة المرور',
                              padding: EdgeInsets.only(
                                right: 60,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Image.asset(
                            'assets/images/logo.png',
                            width: 85,
                            height: 100,
                          ),
                          SizedBox(
                            height: 70,
                          ),
                          RegisterText(
                            text: 'كلمة المرور الحالية',
                          ),
                          CustomTextField(
                            textType: TextInputType.visiblePassword,
                            hintText:
                                '* * * * * * * * * * * * * * * * * * * * * ',
                            icon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isVisible = !isVisible;
                                });
                              },
                              icon: Icon(
                                isVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: AppColors.Secondry,
                                size: 15,
                              ),
                            ),
                            obsecurText: isVisible,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          RegisterText(
                            text: 'كلمة المرور الجديدة',
                          ),
                          CustomTextField(
                            textType: TextInputType.visiblePassword,
                            hintText:
                                '* * * * * * * * * * * * * * * * * * * * * ',
                            icon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isVisible2 = !isVisible2;
                                });
                              },
                              icon: Icon(
                                isVisible2
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: AppColors.Secondry,
                                size: 15,
                              ),
                            ),
                            obsecurText: isVisible2,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          MainButton(
                            text: 'حفظ التعديل',
                            function: () {
                              Navigator.of(context).pop();
                            },
                            height: 45,
                            fontSize: 14,
                          ),
                        ]))))));
  }
}
