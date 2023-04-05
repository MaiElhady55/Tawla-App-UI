import 'package:flutter/material.dart';
import 'package:tawla_app/config/app_colors.dart';
import 'package:tawla_app/widgets/MainText.dart';

class CustomCard extends StatelessWidget {
  final String text;
  final String image;
  final Color imageColor;
  final double imageSize;

  const CustomCard({Key? key, required this.text, required this.image,required this.imageColor,required this.imageSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        child: Card(
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 3),
                      child: ImageIcon(
                        AssetImage('assets/images/$image.png'),
                        size: imageSize,
                        color: imageColor,
                      ),
                    ),
                    RegisterText(
                      text: 'PM',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      padding: EdgeInsets.only(right: 5),
                    ),
                    RegisterText(
                      text: '03:15 ',
                      padding: EdgeInsets.only(right: 4),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
                RegisterText(
                  text: text,
                  padding: EdgeInsets.only(top: 8),
                  height: 1.2,
                )
              ],
            ),
          ),
        ));
  }
}
