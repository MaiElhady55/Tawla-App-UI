import 'package:flutter/material.dart';
import 'package:tawla_app/widgets/MainText.dart';

class GridViewElement extends StatelessWidget {
  final String num;
  final String text;
  final String image;
  final VoidCallback function;

  const GridViewElement({Key? key, required this.num, required this.text, required this.image,required this.function}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:function ,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              'assets/images/$image.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              'assets/images/shadow.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 19,
            top: 15,
            child: Container(
              width: 55, //
              height: 22,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white.withOpacity(0.46),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Text(
                  num,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 9,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'tajawal'),
                ),
              ),
            ),
          ),
          Positioned(
            right: 15,
            bottom: 12,
            child: Padding(
              padding: const EdgeInsets.only(right: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 2),
                    child: Text(
                      text,
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'tajawal',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: Icon(
                          Icons.access_time,
                          size: 9,
                          color: Colors.white,
                        ),
                      ),
                      RegisterText(
                        text: 'PM',
                        fontSize: 9,
                        textColor: Colors.white,
                        fontWeight: FontWeight.w400,
                        padding: EdgeInsets.only(right: 3),
                      ),
                      RegisterText(
                        text: '03:15 ',
                        padding: EdgeInsets.only(right: 2),
                        fontSize: 9,
                        textColor: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    
  }
}
