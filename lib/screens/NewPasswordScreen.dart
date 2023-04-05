import 'package:flutter/material.dart';
import 'package:tawla_app/config/app_colors.dart';
import 'package:tawla_app/screens/HomePage.dart';
import 'package:tawla_app/screens/MobileCodeSreen.dart';
import 'package:tawla_app/widgets/CustomTextField.dart';
import 'package:tawla_app/widgets/MainButton.dart';
import 'package:tawla_app/widgets/MainText.dart';

class NewPasswordScreen extends StatefulWidget {
  static String routeName = 'New-Password-Screen';

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 247, 247, 1),
      body: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage('assets/images/transbackground.png'),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        padding: EdgeInsets.only(right: 25),
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.MAIN,
                          size: 25,
                        )),
                  ],
                ),
                Spacer(),
                Image.asset(
                  'assets/images/logo.png',
                  width: 81,
                  height: 100,
                ),
                SizedBox(
                  height: 75,
                ),
                RegisterText(
                  text:
                      'من فضلك ادخل كلمة مرور جديدة حتى تتمكن من\n الدخول مرة أخرى إلى حسابك',
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  mainAxisAlignment: MainAxisAlignment.center,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.w700,
                  height: 1.8,
                ),
                SizedBox(
                  height: 50,
                ),
                RegisterText(
                  text: 'كلمة المرور الجديدة',
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
                SizedBox(height: 25),
                MainButton(
                  text: 'ارسال',
                  function: () {
                    Navigator.of(context).pushNamed(HomePage.roueName);
                  },
                ),
                Spacer(
                  flex: 3,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
