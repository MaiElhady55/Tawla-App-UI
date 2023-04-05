import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:tawla_app/config/app_colors.dart';

class PinCode extends StatelessWidget {
 
 TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: PinCodeTextField(
        appContext: context,
        length: 4,
        controller: controller,
        enableActiveFill: true,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        textStyle: TextStyle(
            fontSize: 13, fontFamily: 'tajawal', color: Color(0xff606060)),
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          fieldHeight: 45,
          fieldWidth: 70,
          inactiveColor: Colors.white,
          activeColor: Colors.white,
          activeFillColor: Colors.white,
          inactiveFillColor: Colors.white,
          selectedFillColor: Colors.white,
          selectedColor: AppColors.MAIN,
          borderWidth: 1,
          borderRadius: BorderRadius.circular(30),
        ),
        onChanged: (value) {},
      ),
    );
  }
}
