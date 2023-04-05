import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tawla_app/widgets/MainText.dart';

class CustomRow extends StatelessWidget {

  final String image;
  double imageWidth;
  double imageHeight;
  BoxFit fit;
  final String title;
  final String subTitle;

   CustomRow(
      {Key? key,
      required this.image,
      required this.title,
      required this.subTitle,
      this.imageHeight=18,
      this.imageWidth=18,
      this.fit=BoxFit.cover
      })
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 40,
                height: 40,
                child: Image.asset(
                  'assets/images/rectangle.png',
                  fit: BoxFit.cover,
                ),
              ),
              Image.asset(
                image,
                width: imageWidth,
                height: imageHeight,
                fit: fit,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RegisterText(
                text: title,
                padding: EdgeInsets.only(right: 10),
                fontWeight: FontWeight.w700,
                fontSize: 12,
                textColor: Colors.black,
              ),
              RegisterText(
                text: subTitle,
                padding: EdgeInsets.only(right: 10, top: 5),
                fontSize: 9,
                fontWeight: FontWeight.w400,
              )
            ],
          ),
        ],
      ),
    );
  }
}
