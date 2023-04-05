import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:tawla_app/config/app_colors.dart';
import 'package:tawla_app/screens/AccountScreen.dart';
import 'package:tawla_app/screens/ForgotPasswordScreen.dart';
import 'package:tawla_app/screens/HomePage.dart';
import 'package:tawla_app/screens/NewPasswordScreen.dart';
import 'package:tawla_app/widgets/MainButton.dart';
import 'package:tawla_app/widgets/MainText.dart';
import 'package:tawla_app/widgets/MobileCode.dart';

class MobileCodeSreen extends StatelessWidget {
  final int? number;

  TextEditingController controller = TextEditingController();

  MobileCodeSreen({Key? key, this.number}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.ScaffoldBG,
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage('assets/images/transbackground.png'),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {
                          number == 1
                              ? Navigator.of(context)
                                  .pushNamed(ForgotPasswordScreen.routeName)
                              : Navigator.of(context)
                                  .pushNamed(AccountScreen.routeName);
                        },
                        padding: EdgeInsets.only(right: 20),
                        icon: Icon(
                          Icons.arrow_forward_ios,
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
                  height: 70,
                ),
                RegisterText(
                  text: 'من فضلك ادخل كود التفعيل المرسل إليك على \nرقم جوالك',
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
                  text: 'كود التفعيل',
                  mainAxisAlignment: MainAxisAlignment.end,
                  padding: EdgeInsets.only(bottom: 8, right: 40),
                ),
                PinCode(),
                SizedBox(height: 30),
                MainButton(
                    text: 'إرسال',
                    function: () {
                      number == 1
                          ? Navigator.of(context)
                              .pushNamed(NewPasswordScreen.routeName)
                          : Navigator.of(context).pushNamed(HomePage.roueName);
                    }),
                Spacer(
                  flex: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularPercentIndicator(
                      radius: 13,
                      animation: true,
                      animationDuration: 1200,
                      percent: 0.85,
                      lineWidth: 3.5,
                      progressColor: AppColors.MAIN,
                      circularStrokeCap: CircularStrokeCap.butt,
                      center: Text(
                        '45',
                        style: TextStyle(
                            color: AppColors.Secondry,
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                      ),
                    ),
                    RegisterText(
                      text: 'إعادة إرسال الكود',
                      padding: EdgeInsets.only(left: 5),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
