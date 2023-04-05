import 'package:flutter/material.dart';
import 'package:tawla_app/config/app_colors.dart';
import 'package:tawla_app/screens/HomePage.dart';
import 'package:tawla_app/screens/LocationScreen.dart';
import 'package:tawla_app/screens/TableBookingScreen.dart';
import 'package:tawla_app/widgets/AppointmentListRes1.dart';
import 'package:tawla_app/widgets/CustomRowRes1.dart';
import 'package:tawla_app/widgets/MainButton.dart';
import 'package:tawla_app/widgets/MainText.dart';
import 'package:tawla_app/widgets/StarReview.dart';

class ResturantOne extends StatefulWidget {
  static String routeName = 'Res1';
  const ResturantOne({
    Key? key,
  }) : super(key: key);

  @override
  State<ResturantOne> createState() => _ResturantOneState();
}

class _ResturantOneState extends State<ResturantOne> {
  bool isSelected = false;

  Widget BuildCircleAvatar(
      {EdgeInsets padding = const EdgeInsets.all(0),
      required VoidCallback function,
      required IconData icon,
      required Color iconColor}) {
    return CircleAvatar(
      radius: 16,
      backgroundColor: Colors.white.withOpacity(0.48),
      child: IconButton(
          onPressed: function,
          padding: padding,
          icon: Icon(
            icon,
            size: 20,
            color: iconColor,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.ScaffoldBG,
        body: SingleChildScrollView(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.65,
                      child: Hero(
                          tag: 'res1',
                          child: Image.asset(
                            'assets/images/resone.png',
                            fit: BoxFit.cover,
                          )),
                    ),
                    Positioned(
                      right: 25,
                      top: 65,
                      left: 25,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BuildCircleAvatar(
                              function: () {
                                Navigator.of(context)
                                    .pushNamed(HomePage.roueName);
                              },
                              icon: Icons.arrow_back_ios,
                              iconColor: AppColors.MAIN,
                              padding: EdgeInsets.only(right: 8)),
                          BuildCircleAvatar(
                            function: () {
                              setState(() {
                                isSelected = !isSelected;
                              });
                            },
                            icon: isSelected
                                ? Icons.favorite
                                : Icons.favorite_border,
                            iconColor: Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StarReview(
                          widget: Spacer(),
                          iconSize: 15,
                          sizedBox: 2,
                          mainAxis: MainAxisAlignment.spaceAround),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          RegisterText(
                            text: 'مطعم ديري كوين',
                            padding: EdgeInsets.only(right: 3),
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            textColor: Colors.black,
                          ),
                          RegisterText(
                            text: 'مفتوح الآن',
                            padding: EdgeInsets.only(right: 7),
                            textColor: Color(0xff00B40D),
                            fontSize: 9,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 4,
                              ),
                              child: Icon(Icons.location_on,
                                  size: 11, color: AppColors.Secondry),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              'شارع الملك عبد العزيز - جدة',
                              style: TextStyle(
                                  color: AppColors.Secondry,
                                  fontFamily: 'tajawal',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 9),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 2),
                            child: Icon(
                              Icons.phone,
                              color: Color(0xff6F6F6F).withOpacity(0.8),
                              size: 9,
                            ),
                          ),
                          RegisterText(
                            text: '01123456789',
                            textColor: Color(0xff6F6F6F).withOpacity(0.8),
                            padding: EdgeInsets.only(right: 2),
                            fontWeight: FontWeight.normal,
                            fontSize: 10,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RichText(
                          maxLines: 3,
                          textAlign: TextAlign.right,
                          text: TextSpan(
                              style: TextStyle(
                                  fontFamily: 'tajawal',
                                  fontSize: 12,
                                  height: 1.8,
                                  color: const Color.fromRGBO(96, 96, 96, 1),
                                  fontWeight: FontWeight.w500),
                              text:
                                  ' سلسلة مطاعم ديري كوين في جدة تقدم لكم أشهي المأكولات ',
                              children: [
                                TextSpan(
                                    text:
                                        ' المشوية اللذيذة و المحببة لدي الصغار و الكبار'),
                                TextSpan(
                                    text:
                                        ' فمكان عائلتك المفضل عندنا نحن في انتظارك بادر بحجز طاولتك'),
                              ])),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomRow(
                              image: 'assets/images/file.png',
                              title: '3 ايام',
                              subTitle: 'فترة السماح بالغاء الحجز'),
                          CustomRow(
                            image: 'assets/images/children.png',
                            title: '5 سنين',
                            subTitle: 'عمر الاطفال المسموح به',
                            fit: BoxFit.contain,
                            imageWidth: 22,
                            imageHeight: 22,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomRow(
                              image: 'assets/images/wallet2x.png',
                              title: '50 ريال',
                              subTitle: 'مبلغ تاكيد الحجز'),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: CustomRow(
                              image: 'assets/images/coin.png',
                              title: 'اونلاين و محفظة',
                              subTitle: 'طرق الدفع المتاحة',
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomRow(
                              image: 'assets/images/wallet2x.png',
                              title: 'داخلي',
                              subTitle: 'نوع المكان'),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: CustomRow(
                              image: 'assets/images/file.png',
                              title: 'لا يوجد',
                              subTitle: ' مكان لايقاف السيارة',
                            ),
                          )
                        ],
                      ),
                      RegisterText(
                        text: 'مواعيد العمل',
                        padding: EdgeInsets.only(right: 0, top: 12),
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                        textColor: Colors.black,
                      ),
                      AppointmentList(),
                      MainButton(
                        text: 'احجز طاولتك الآن',
                        function: () {
                          Navigator.of(context)
                              .pushNamed(TableBookingScreen.routeName);
                        },
                        padding: 0,
                        height: 45,
                        fontSize: 14,
                      ),
                      SizedBox(height: 35)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
