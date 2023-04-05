import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tawla_app/widgets/MainText.dart';

class AppointmentList extends StatelessWidget {
  List<String> day = ['السبت', 'الاحد', 'الاثنين'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: day.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 20, left: 9),
            child: Container(
              width: 180,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RegisterText(
                    text: day[index],
                    padding: EdgeInsets.all(0),
                    fontWeight: FontWeight.w500,
                    textColor: Colors.black,
                  ),
                  RegisterText(
                    text: ' 12:00 صباحا   الي   10:00 مساءا',
                    padding: EdgeInsets.all(0),
                    fontSize: 9,
                    fontWeight: FontWeight.w300,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
