import 'package:flutter/material.dart';
import 'package:tawla_app/config/app_colors.dart';
import 'package:tawla_app/screens/HomePage.dart';
import 'package:tawla_app/widgets/MainButton.dart';
import 'package:tawla_app/widgets/MainText.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({Key? key}) : super(key: key);
  static String routeName = 'Success-Screen';

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(milliseconds: 400),
      () {
        setState(() {
          image = 'assets/images/done.png';
        });
      },
    );
    super.initState();
  }

  String image = 'assets/images/welldone.png';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.ScaffoldBG,
            body: Directionality(
                textDirection: TextDirection.rtl,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Image.asset(
                        image,
                        width: MediaQuery.of(context).size.width,
                        height: 250,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    RegisterText(
                      text: 'تم إرسال طلبك بنجاح إلى صاحب المطعم',
                      padding: EdgeInsets.all(0),
                      textAlign: TextAlign.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    MainButton(
                        text: 'العودة للرئيسية',
                        function: () {
                          Navigator.of(context).pushNamed(HomePage.roueName);
                        })
                  ],
                ))));
  }
}
