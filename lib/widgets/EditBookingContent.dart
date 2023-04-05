import 'package:flutter/material.dart';
import 'package:tawla_app/config/app_colors.dart';
import 'package:tawla_app/widgets/CustomRowRes1.dart';
import 'package:tawla_app/widgets/MainText.dart';

class EditBookingContent extends StatelessWidget {
  final String keyword;
  final Widget? widgetOne;
  final Widget? widgetTwo;
  final int num;

  const EditBookingContent(
      {Key? key, this.keyword = '', this.widgetOne,this.widgetTwo, this.num = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        alignment: Alignment.bottomCenter,
        clipBehavior: Clip.none,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.75,
            child: Image.asset(
              'assets/images/resone.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            right: 25,
            top: 60,
            child: CircleAvatar(
              radius: 16,
              backgroundColor: Colors.white.withOpacity(0.48),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  padding: EdgeInsets.only(right: 8),
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: AppColors.MAIN,
                  )),
            ),
          ),
          Positioned(
            bottom: keyword == 'complete' ?num==1?-240: -225 : -160,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.86,
              height: keyword == 'complete' ?num==1? 330:320:260,
              padding: EdgeInsets.only(right: 25, left: 25, top: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RegisterText(
                        text: 'مطعم ديري كوين',
                        padding: EdgeInsets.all(0),
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        textColor: Colors.black,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          RegisterText(
                            text: '50',
                            padding: EdgeInsets.only(top: 10, left: 3),
                            fontWeight: FontWeight.bold,
                            fontSize: 31,
                            textColor: AppColors.Secondry,
                          ),
                          RegisterText(
                            text: 'ريال',
                            padding: EdgeInsets.only(top: 10),
                            fontWeight: FontWeight.bold,
                            textColor: AppColors.Secondry,
                          ),
                        ],
                      ),
                    ],
                  ),
                  RegisterText(
                      padding: EdgeInsets.only(top: 7, bottom: 10),
                      fontSize: 13,
                      height: 1.2,
                      text:
                          'يتم كتـــــابة نص الملاحظـــــــات هنــــا يتــم كتابة نص\n الملاحظات هنا يتم كتابة نص الملاحظات هنا'),
                  CustomRow(
                      image: 'assets/images/phonecall.png',
                      title: '01123456789',
                      subTitle: 'رقم جوال المطعم'),
                  CustomRow(
                      image: 'assets/images/users.png',
                      title: '2',
                      subTitle: 'عدد الافراد'),
                  CustomRow(
                      image: 'assets/images/calendar.png',
                      title: 'فبراير - 03:15 مساء 26',
                      subTitle: 'موعد الحجز'),
                  keyword == 'complete' ?num==1? widgetOne!:widgetTwo! : Container(),
                ],
              ),
            ),
          ),
        ]);
  }
}
