import 'package:flutter/material.dart';
import 'package:tawla_app/config/app_colors.dart';
import 'package:tawla_app/widgets/CustomTextField.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);
  static String routeName = 'Location-Screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.ScaffoldBG,
            body: SingleChildScrollView(
                child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      ExactAssetImage('assets/images/map.png'),
                                  fit: BoxFit.cover)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 60,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 10, bottom: 8),
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    icon: Icon(
                                      Icons.close_sharp,
                                      color: AppColors.MAIN,
                                    )),
                              ),
                              CustomTextField(
                                hintText: 'اسم المطعم/الكافية',
                                textType: TextInputType.text,
                                height: 42,
                                contentPadding: EdgeInsets.zero,
                                prefixIcon: Icon(Icons.location_on,color: AppColors.MAIN,size: 15,),
                              )
                            ],
                          ),
                        ),
                        Image.asset(
                          'assets/images/location.png',
                          width: 45,
                          height: 60,
                          fit: BoxFit.cover,
                        )
                      ],
                    )))));
  }
}
