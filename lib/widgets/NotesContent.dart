import 'package:flutter/material.dart';

class NotesContent extends StatelessWidget {
  final Color color;
  final double height;
  final String text;
  final EdgeInsets maragin;

  const NotesContent({Key? key, this.color = const Color(0xffF7F7F7),
  this.height=110,this.text='اكتب النص هنا',this.maragin=const EdgeInsets.all(0),
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        margin: maragin,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color,
        ),
        child: TextFormField(
          style: TextStyle(
              decorationThickness: 0, decoration: TextDecoration.none),
          keyboardType: TextInputType.multiline,
          maxLines: 4,
          decoration: InputDecoration(
              hintText: text,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              hintStyle: TextStyle(
                  fontSize: 12,
                  fontFamily: 'tajawal',
                  color: Color(0xff606060)),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              )),
        ));
  }
}
