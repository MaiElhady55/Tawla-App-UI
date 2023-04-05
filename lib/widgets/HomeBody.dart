import 'package:flutter/material.dart';
import 'package:tawla_app/widgets/ResturantList.dart';

class HomeBody extends StatelessWidget {
  final String image;
  final String name;
  final String type;
  final String tag;
  final int index;

  const HomeBody(
      {Key? key,
      required this.image,
      required this.name,
      required this.index,
      required this.type,
      required this.tag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return index == 0
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.30,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
              ),
              child: Column(
                children: [
                  Text(type),
                  Text(name),
                ],
              ),
            ),
          )
        : ResturantList(
            image: image, name: name, type: type, tag: tag, index: index);
  }
}
