import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tawla_app/screens/CompletedRequests.dart';
import 'package:tawla_app/widgets/GridViewElement.dart';
import 'package:tawla_app/widgets/MainText.dart';

class ScreenFour extends StatelessWidget {
  List<Map<String, dynamic>> myList = [
    {'num': '62543', 'text': 'مطعم ديري كوين', 'image': 'queen'},
    {'num': '97530', 'text': 'مطعم اربيز', 'image': 'arbez'},
    {'num': '63892', 'text': 'مطعم تاكو بيل', 'image': 'tako'},

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 3,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 4,
          childAspectRatio: 0.96),
      itemBuilder: (context, index) {
        return GridViewElement(
            num: myList[index]['num'], text: myList[index]['text'], image: myList[index]['image'], function: (){
              index==0?Navigator.of(context).pushNamed(CompletedRequestsScreen.routeName):null;
            });
      },
    );
  }
}
