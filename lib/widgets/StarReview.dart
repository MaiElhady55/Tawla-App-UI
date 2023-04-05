import 'package:flutter/material.dart';
import 'package:tawla_app/config/app_colors.dart';

class StarReview extends StatelessWidget {
  final double iconSize;

  final double sizedBox;
  final Widget widget;
  final MainAxisAlignment mainAxis;

  StarReview({
    required this.widget,
    required this.iconSize,
    required this.sizedBox,
    required this.mainAxis,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxis,
      children: [
        Icon(Icons.star, color: Color(0xffED8A19), size: iconSize),
        Icon(Icons.star, color: Color(0xffED8A19), size: iconSize),
        Icon(Icons.star, color: Color(0xffED8A19), size: iconSize),
        Icon(Icons.star_border, color: Color(0xffED8A19), size: iconSize),
        Icon(Icons.star_border, color: Color(0xffED8A19), size: iconSize),
        widget,
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
            Container(
              width: 27,
              height: 32,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    //topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                  color: Color(0xffDBDBDB)),
              child: Text('PDF',style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w900,
              ),),
            ),
            Positioned(
              left: 12 ,
              top: -3.2,
              child: Container(
                width: 22,
                height: 22,
                decoration: BoxDecoration(
                  color:AppColors.ScaffoldBG,
                  shape: BoxShape.circle
                ),),
            ),
             Positioned(
              right: -5.5,
              top: -1.8,
               child: CircleAvatar(
                  radius: 9,
                  backgroundColor: AppColors.Secondry,
                  child: Icon(Icons.restaurant_outlined,color: Colors.white,size: 11,),
                ),
             ),
            
          ]),
        ),
      ],
    );
  }
}
