import 'package:flutter/material.dart';
import 'package:tawla_app/config/app_colors.dart';
import 'package:tawla_app/screens/HomePage.dart';
import 'package:tawla_app/screens/LoginScreen.dart';
import 'package:tawla_app/screens/RegisterScreenThree.dart';
import 'package:tawla_app/screens/ForgotPasswordScreen.dart';
import 'package:tawla_app/screens/MobileCodeSreen.dart';
import 'package:tawla_app/screens/TermsConditionsScreen.dart';
import 'package:tawla_app/widgets/CustomTextField.dart';
import 'package:tawla_app/widgets/MainButton.dart';
import 'package:tawla_app/widgets/MainText.dart';
import 'package:tawla_app/widgets/dialogContent.dart';

class AccountScreen extends StatefulWidget {
  static String routeName = 'Account-Screen';

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  bool selected = false;
  bool isVisible = true;

  showMyDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        barrierColor: Colors.black26,
        builder: (ctx) {
          return AlertDialog(
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            backgroundColor: Color(0xffF7F7F7),
            content: DialogContent(),
          );
        });
  }

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
                      image:
                          ExactAssetImage('assets/images/transbackground.png'),
                      fit: BoxFit.cover)),
              child: Column(
                children: [
                  SizedBox(
                    height: 75,
                  ),
                  Image.asset(
                    'assets/images/logo.png',
                    width: 85,
                    height: 100,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [RegisterText(text: 'الاسم الأول')],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              RegisterText(
                                text: 'الاسم الأخير',
                                padding: EdgeInsets.only(right: 28, bottom: 8),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                            child: CustomTextField(
                          hintText: 'رقية',
                          textType: TextInputType.name,
                          padding: const EdgeInsets.only(
                            right: 25,
                            left: 4.5,
                          ),
                        )),
                      ),
                      Expanded(
                        child: Container(
                            child: CustomTextField(
                          hintText: 'مجدي',
                          padding: const EdgeInsets.only(left: 25, right: 4.5),
                          textType: TextInputType.name,
                        )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  RegisterText(
                    text: ' البريد الإلكتروني',
                  ),
                  CustomTextField(
                    textType: TextInputType.emailAddress,
                    hintText: 'info@gmail.com',
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  RegisterText(
                    text: ' رقم الجوال',
                  ),
                  CustomTextField(
                    textType: TextInputType.phone,
                    hintText: '01123456789',
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  RegisterText(text: 'كلمة المرور'),
                  CustomTextField(
                    hintText: '* * * * * * * * * * * * * * * * * * * * *',
                    textType: TextInputType.visiblePassword,
                    icon: IconButton(
                      onPressed: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      icon: Icon(
                        isVisible ? Icons.visibility : Icons.visibility_off,
                        color: AppColors.Secondry,
                        size: 15,
                      ),
                    ),
                    obsecurText: isVisible,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Row(
                      children: [
                        Checkbox(
                          value: selected,
                          onChanged: (val) {
                            setState(() {
                              selected = val!;
                            });
                          },
                          activeColor: AppColors.Secondry,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(TermsConditionsScreen.routeName);
                          },
                          child: Text(
                            'الموافقة على الشروط و الأحكام',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(96, 96, 96, 1),
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'tajawal',
                              decoration: TextDecoration.underline,
                              decorationThickness: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  MainButton(
                    text: ' انشاء حساب',
                    function: () => showMyDialog(context),
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RegisterText(
                        text: 'هل تمتلك حساب؟',
                        textAlign: TextAlign.center,
                        padding: EdgeInsets.all(0),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(LogInScreen.routeName);
                        },
                        child: RegisterText(
                          text: 'سجل دخول الآن',
                          textAlign: TextAlign.center,
                          padding: EdgeInsets.all(0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
