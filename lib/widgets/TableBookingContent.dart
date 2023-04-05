import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tawla_app/config/app_colors.dart';
import 'package:tawla_app/screens/Resturant1.dart';
import 'package:tawla_app/screens/SuccessScreen.dart';
import 'package:tawla_app/widgets/CustomTextField.dart';
import 'package:tawla_app/widgets/HeaderScreen.dart';
import 'package:tawla_app/widgets/MainButton.dart';
import 'package:tawla_app/widgets/MainText.dart';
import 'package:tawla_app/widgets/NotesContent.dart';

class TableBookingContent extends StatefulWidget {
  static String routeName = 'Table-Reservation';

  final String keyword;

  const TableBookingContent({Key? key, this.keyword=''}) : super(key: key);

  @override
  State<TableBookingContent> createState() => _TableBookingContentState();
}

class _TableBookingContentState extends State<TableBookingContent> {
  int count = 2;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.ScaffoldBG,
            body: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(children: [
                      SizedBox(
                        height: 30,
                      ),
                      Directionality(
                          textDirection: TextDirection.rtl,
                          child: HeaderScreen(
                            text: widget.keyword =='edit'?'تعديل الحجز': 'تاكيد حجز طاولتك',
                            padding: EdgeInsets.only(right:widget.keyword=='edit'?60: 55, top: 5),
                          )),
                      SizedBox(
                        height: 55,
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.73,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: RegisterText(
                                    text: 'موعد الحجز',
                                    padding: EdgeInsets.only(
                                        top: 50, right: 20, bottom: 15),
                                    textColor: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                    height: 130,
                                    child: CupertinoDatePicker(
                                      mode: CupertinoDatePickerMode.dateAndTime,
                                      onDateTimeChanged: (value) {},
                                      initialDateTime: DateTime.now(),
                                    )),
                                SizedBox(
                                  height: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            RegisterText(
                                              text: 'عدد الافراد',
                                              padding: EdgeInsets.all(0),
                                              textColor: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            Container(
                                              width: 114,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                  color: Color(0xffF7F7F7),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          48)),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          count++;
                                                        });
                                                      },
                                                      icon: Icon(
                                                        Icons.add,
                                                        color:
                                                            Color(0xff888888),
                                                        size: 15,
                                                      )),
                                                  RegisterText(
                                                    text: '${count}',
                                                    padding: EdgeInsets.all(0),
                                                    fontWeight: FontWeight.bold,
                                                    textColor:
                                                        Color(0xff888888),
                                                  ),
                                                  IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          count--;
                                                        });
                                                      },
                                                      icon: Icon(
                                                        Icons.remove,
                                                        color:
                                                            Color(0xff888888),
                                                        size: 15,
                                                      )),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                        RegisterText(
                                          text: 'ملاحظات',
                                          padding: EdgeInsets.only(bottom: 7),
                                          textColor: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        NotesContent(),
                                        Divider(
                                          height: 30,
                                          thickness: 0.9,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                CircleAvatar(
                                                  radius: 25,
                                                  backgroundImage: AssetImage(
                                                      'assets/images/resone.png'),
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    RegisterText(
                                                      text: 'مطعم ديري كوين',
                                                      padding: EdgeInsets.only(
                                                          right: 10, top: 10),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15,
                                                      textColor:
                                                          Color(0xff292929),
                                                    ),
                                                    SizedBox(height: 4),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 7),
                                                      child: Row(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                              bottom: 4,
                                                            ),
                                                            child: Icon(
                                                                Icons
                                                                    .location_on,
                                                                size: 11,
                                                                color: Color(
                                                                        0xff6F6F6F)
                                                                    .withOpacity(
                                                                        0.8)),
                                                          ),
                                                          SizedBox(
                                                            width: 2,
                                                          ),
                                                          Text(
                                                            'شارع الملك عبد العزيز - جدة',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'tajawal',
                                                                color: Color(
                                                                        0xff6F6F6F)
                                                                    .withOpacity(
                                                                        0.8),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontSize: 9),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              textBaseline:
                                                  TextBaseline.alphabetic,
                                              children: [
                                                RegisterText(
                                                  text: '50',
                                                  padding:
                                                      EdgeInsets.only(top: 10),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 40,
                                                  textColor: AppColors.Secondry,
                                                ),
                                                RegisterText(
                                                  text: 'ريال',
                                                  padding:
                                                      EdgeInsets.only(top: 10),
                                                  fontWeight: FontWeight.bold,
                                                  textColor: AppColors.Secondry,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                              right: 105,
                              top: -36,
                              child: Image.asset(
                                'assets/images/logo@2x.png',
                                fit: BoxFit.cover,
                                width: 80,
                                height: 80,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: widget.keyword=='edit'?10:0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only( top:25, bottom: 15),
                        child: MainButton(
                          text:widget.keyword=='edit'?'حفظ التعديل': 'تاكيد الحجز',
                          function: () {
                            widget.keyword=='edit'?Navigator.of(context).pop(): Navigator.of(context)
                                .pushNamed(SuccessScreen.routeName);
                          },
                          padding: 0,
                          height: 45,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: widget.keyword=='edit'?20:0,
                      ),
                      widget.keyword=='edit'?Container(): Padding(
                        padding: const EdgeInsets.only(bottom: 25),
                        child: MainButton(
                          text: 'الغاء',
                          function: () {
                            Navigator.of(context).pop();
                          },
                          color: Colors.white,
                          textColor: AppColors.MAIN,
                          padding: 0,
                          height: 45,
                          fontSize: 14,
                        ),
                      ),
                    ])))));
  }
}
