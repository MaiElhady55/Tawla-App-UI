import 'package:flutter/material.dart';
import 'package:tawla_app/config/app_colors.dart';
import 'package:tawla_app/screens/HomePage.dart';
import 'package:tawla_app/widgets/CustomTextField.dart';
import 'package:tawla_app/widgets/HeaderScreen.dart';
import 'package:tawla_app/widgets/MainButton.dart';
import 'package:tawla_app/widgets/MainText.dart';
import 'package:tawla_app/widgets/NotesContent.dart';

class ContactusScreen extends StatelessWidget {
  const ContactusScreen({Key? key}) : super(key: key);
  static String routeName = 'Contactus -Screen';
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
                                text: 'اتصل بنا',
                                padding: EdgeInsets.only(right: 80,top: 10)),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Image.asset(
                            'assets/images/logo.png',
                            width: 85,
                            height: 100,
                          ),
                          SizedBox(
                            height: 65,
                          ),
                          RegisterText(
                            text: 'نوع رسالة التواصل',
                          ),
                          CustomTextField(
                            textType: TextInputType.text,
                            hintText: 'اقتراح',
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: AppColors.Secondry,
                              size: 35,
                            ),
                          ),
                          SizedBox(height: 20),
                          RegisterText(
                            text: 'رسالتك',
                          ),
                          NotesContent(
                            color: Colors.white,
                            height: 140,
                            text: 'اكتب نص الرسالة هنا',
                            maragin: EdgeInsets.symmetric(horizontal: 25),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          MainButton(
                              text: 'ارسال',
                              function: () {
                                Navigator.of(context)
                                    .pushNamed(HomePage.roueName);
                              })
                        ]))))));
  }
}
