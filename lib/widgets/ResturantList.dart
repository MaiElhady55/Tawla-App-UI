import 'package:flutter/material.dart';
import 'package:tawla_app/screens/Resturant1.dart';

class ResturantList extends StatelessWidget {
  final String image;
  final String name;
  final String type;
  final String tag;
  final int index;

  const ResturantList(
      {Key? key,
      required this.image,
      required this.name,
      required this.type,
      required this.tag,
      required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (index == 0) {
          Navigator.push(context, MaterialPageRoute(builder: (ctx) {
            return ResturantOne();
          }));
        } else if (index == 1) {
          Navigator.push(context, MaterialPageRoute(builder: (ctx) {
            return ResturantOne();
          }));
        }
      },
      child: Hero(
        tag: tag,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.asset(
                'assets/images/bigshadow.png',
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              left: 38,
              top: 26,
              child: Container(
                width: index == 2 ? 87 : 65, //
                height: 22,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white.withOpacity(0.46),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Text(
                    type,
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
              right: 18,
              bottom: 20,
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 3),
                      child: Text(
                        name,
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: 'tajawal',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Icon(
                            Icons.location_on,
                            size: 13,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          'شارع الملك عبد العزيز - جدة',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'tajawal',
                              fontWeight: FontWeight.w500,
                              fontSize: 10),
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
    );
    
  }
}
