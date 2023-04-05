import 'package:flutter/material.dart';
import 'package:tawla_app/config/app_colors.dart';
import 'package:tawla_app/widgets/ColoredText.dart';
import 'package:tawla_app/widgets/CustomCard.dart';
import 'package:tawla_app/widgets/HeaderScreen.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);
  static String routeName = 'Wallet-Screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.ScaffoldBG,
            body: SingleChildScrollView(
              child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(children: [
                      SizedBox(
                        height: 40,
                      ),
                      HeaderScreen(
                        text: 'محفظتي',
                        padding: EdgeInsets.only(right: 80),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Center(
                        child: Image.asset(
                          'assets/images/mywallet.png',
                          width: MediaQuery.of(context).size.width,
                          height: 150,
                        ),
                      ),
                      ColoredText(
                          text: '20,550',
                          PaddingTextOne: EdgeInsets.only(top: 35),
                          PaddingTextTwo: EdgeInsets.only(top: 18, right: 5),
                          fontSize: 57),
                       SizedBox(
                        height: 25,
                       ),
                       CustomCard(
                        image: 'miniwallet',
                        imageSize: 10,
                        imageColor: Color(0xff888888),
                        text:
                        'سحب 500 ريال من رصيدك لطلب الحجز الخاص بك\n رقم 131414'),
                        CustomCard(
                        image: 'miniwallet',
                        imageSize: 10,
                        imageColor: Color(0xff888888),
                        text:
                        'سحب 500 ريال من رصيدك لطلب الحجز الخاص بك\n رقم 131414'),
                        
                       CustomCard(
                        image: 'miniwallet',
                        imageSize: 10,
                        imageColor: Color(0xff888888),
                        text:
                        'سحب 500 ريال من رصيدك لطلب الحجز الخاص بك\n رقم 131414'),
                        CustomCard(
                        image: 'miniwallet',
                        imageSize: 10,
                        imageColor: Color(0xff888888),
                        text:
                        'سحب 500 ريال من رصيدك لطلب الحجز الخاص بك\n رقم 131414'),
                          
                    ]),
                  )),
            )));
  }
}
