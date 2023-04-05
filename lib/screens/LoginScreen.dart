import 'package:flutter/material.dart';
import 'package:tawla_app/config/app_colors.dart';
import 'package:tawla_app/screens/AccountScreen.dart';
import 'package:tawla_app/screens/HomePage.dart';
import 'package:tawla_app/screens/ForgotPasswordScreen.dart';
import 'package:tawla_app/widgets/CustomTextField.dart';
import 'package:tawla_app/widgets/MainButton.dart';
import 'package:tawla_app/widgets/MainText.dart';

class LogInScreen extends StatefulWidget {
  static String routeName = 'Login-Screen';

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool isVisible = true;
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
                    height: 140,
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
                    text: 'رقم الجوال/ البريد الإلكتروني',
                  ),
                  CustomTextField(
                    textType: TextInputType.emailAddress,
                    hintText: '01123456789',
                  ),
                  SizedBox(height: 20),
                  RegisterText(
                    text: 'كلمة المرور',
                  ),
                  CustomTextField(
                    textType: TextInputType.visiblePassword,
                    hintText: '* * * * * * * * * * * * * * * * * * * * * ',
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
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(ForgotPasswordScreen.routeName);
                    },
                    child: RegisterText(
                      text: 'هل نسيت كلمة المرور ؟',
                      padding: EdgeInsets.only(left: 30, top: 12),
                      fontWeight: FontWeight.normal,
                      mainAxisAlignment: MainAxisAlignment.end,
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(height: 30),
                  MainButton(
                    text: 'تسجيل دخول',
                    function: () {
                      Navigator.of(context).pushNamed(HomePage.roueName);
                    },
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RegisterText(
                        text: 'لا تمتلك حساب؟',
                        textAlign: TextAlign.center,
                        padding: EdgeInsets.all(0),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(AccountScreen.routeName);
                        },
                        child: RegisterText(
                          text: 'سجل الآن',
                          textAlign: TextAlign.center,
                          padding: EdgeInsets.all(0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(HomePage.roueName);
                    },
                    child: RegisterText(
                      text: 'تخطي',
                      textAlign: TextAlign.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      padding: EdgeInsets.all(0),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
