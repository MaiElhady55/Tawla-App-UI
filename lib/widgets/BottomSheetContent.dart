import 'package:flutter/material.dart';
import 'package:tawla_app/screens/AboutAppScreen.dart';
import 'package:tawla_app/screens/BookingsScreen.dart';
import 'package:tawla_app/screens/ContactusScreen.dart';
import 'package:tawla_app/screens/EditingDataScreen.dart';
import 'package:tawla_app/screens/FavoritesScreen.dart';
import 'package:tawla_app/screens/LoginScreen.dart';
import 'package:tawla_app/screens/TermsConditionsScreen.dart';
import 'package:tawla_app/screens/WalletScreen.dart';
import 'package:tawla_app/widgets/MainText.dart';

class BottomSheetContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.64,
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(EditingDataScreen.routeName);
                  },
                  child: Image.asset(
                    'assets/images/settings.png',
                    fit: BoxFit.cover,
                    width: 18,
                    height: 18,
                  ),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        RegisterText(
                          text: 'رقيه مجدي',
                          padding: EdgeInsets.only(right: 8),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          textColor: Color(0xff292929),
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            RegisterText(
                              text: '01123456789',
                              textColor: Color(0xff6F6F6F).withOpacity(0.8),
                              padding: EdgeInsets.only(right: 2),
                              fontWeight: FontWeight.normal,
                              fontSize: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 2),
                              child: Icon(
                                Icons.phone,
                                color: Color(0xff6F6F6F),
                                size: 9,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/user.png'),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            BuildList(
                text: 'حجوزاتي',
                image: 'group',
                function: () {
                  Navigator.of(context).pushNamed(BookingsScreen.routeName);
                }),
            BuildList(
                text: 'المفضلة',
                image: '',
                count: 1,
                function: () {
                  Navigator.of(context).pushNamed(FavoritesScreen.routeName);
                }),
            BuildList(
                text: 'محفظتي',
                image: 'wallet',
                function: () {
                  Navigator.of(context).pushNamed(WalletScreen.routeName);
                }),
            BuildList(
                text: 'اتصل بنا',
                image: 'mail',
                function: () {
                  Navigator.of(context).pushNamed(ContactusScreen.routeName);
                }),
            BuildList(
                text: 'عن التطبيق',
                image: 'care',
                function: () {
                  Navigator.of(context).pushNamed(AboutAppScree.routeName);
                }),
            BuildList(
                text: 'الشروط والاحكام',
                image: 'test',
                function: () {
                  Navigator.of(context)
                      .pushNamed(TermsConditionsScreen.routeName);
                }),
            BuildList(
                text: 'تسجيل الخروج',
                image: 'exist',
                function: () {
                  Navigator.of(context).pushNamed(LogInScreen.routeName);
                }),
          ],
        ),
      ),
    );
  }

  Widget BuildList(
      {required String text,
      required String image,
      int count = 0,
      required VoidCallback function}) {
    return InkWell(
      onTap: function,
      child: Container(
        height: 48,
        padding: EdgeInsets.only(right: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            RegisterText(
              text: text,
              padding: EdgeInsets.only(right: 20),
              textColor: Colors.black,
            ),
            count == 0
                ? ImageIcon(
                    AssetImage(
                      'assets/images/$image.png',
                    ),
                    size: 20,
                    color: Colors.black87)
                : Icon(Icons.favorite_border,
                    color: Colors.black.withOpacity(0.7), size: 22),
          ],
        ),
      ),
    );
  }
}
