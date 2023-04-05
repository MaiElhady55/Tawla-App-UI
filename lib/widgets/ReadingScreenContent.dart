import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tawla_app/config/app_colors.dart';
import 'package:tawla_app/widgets/HeaderScreen.dart';

class ReadingScreen extends StatelessWidget {
  final String title;
  final double padding;

  const ReadingScreen({Key? key, required this.title,this.padding=70}) : super(key: key);
  customText() {
    return Text(
      'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصـوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق \nإذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد،النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحـــيان أن يطلع على صورة حقيقية لتصميم الموقع',
      maxLines: 9,
      style: TextStyle(
          fontFamily: 'tajawal',
          fontSize: 13,
          height: 1.8,
          color: const Color.fromRGBO(96, 96, 96, 1),
          fontWeight: FontWeight.w500),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.ScaffoldBG,
            body: SingleChildScrollView(
                child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: ExactAssetImage(
                                    'assets/images/transbackground.png'),
                                fit: BoxFit.cover)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 40,
                                ),
                                HeaderScreen(
                                    text: title,
                                    padding:
                                        EdgeInsets.only(right: padding, top: 10)),
                                SizedBox(
                                  height: 40,
                                ),
                                Center(
                                  child: Image.asset(
                                    'assets/images/logo.png',
                                    width: 85,
                                    height: 100,
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                customText(),
                                SizedBox(
                                  height: 15,
                                ),
                                customText(),
                                SizedBox(
                                  height: 30,
                                ),
                              ]),
                        ))))));
  }
}
