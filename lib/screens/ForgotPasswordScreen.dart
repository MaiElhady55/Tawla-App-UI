import 'package:flutter/material.dart';
import 'package:tawla_app/config/app_colors.dart';
import 'package:tawla_app/screens/MobileCodeSreen.dart';
import 'package:tawla_app/widgets/CustomTextField.dart';
import 'package:tawla_app/widgets/MainButton.dart';
import 'package:tawla_app/widgets/MainText.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = 'Forgot-Password-Screen';

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
                      'من فضلك ادخل رقم جوالك حتي تتمكن من تغيير\n كلمة المرور الخاصة بك',
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  mainAxisAlignment: MainAxisAlignment.center,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.w700,
                  height: 1.8,
                ),
                SizedBox(
                  height: 50,
                ),
                RegisterText(text: 'رقم الجوال'),
                CustomTextField(
                    hintText: '01123456789', textType: TextInputType.number),
                SizedBox(height: 25),
                MainButton(
                  text: 'ارسال',
                  function: () {
                    Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(
                      builder: (context) {
                        return MobileCodeSreen(number: 1);
                      },
                    ));
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
