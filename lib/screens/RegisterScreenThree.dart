import 'package:flutter/material.dart';
import 'package:tawla_app/screens/AccountScreen.dart';

class RegisterScreenOThree extends StatelessWidget {
  static String routeName = '/r3';
  const RegisterScreenOThree({Key? key}) : super(key: key);

  Selected(BuildContext context) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) {
      return AccountScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 247, 247, 1),
      body: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image:
                        ExactAssetImage('assets/images/transbackground.png'))),
            child: Column(
              children: [
                SizedBox(
                  height: 140,
                ),
                Image.asset(
                  'assets/images/logo.png',
                  width: 81,
                  height: 100,
                ),
                SizedBox(
                  height: 75,
                ),
                Container(
                  width: 400,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      'من فضلك ادخل كلمة مرور جديدة حتى تتمكن من الدخول مرة أخرى إلى حسابك',
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      softWrap: true,
                      overflow: TextOverflow.visible,
                      style: TextStyle(
                          color: Color.fromRGBO(96, 96, 96, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6, right: 38),
                      child: Text(
                        'كلمة المرور الجديدة',
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            color: Color.fromRGBO(96, 96, 96, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.bold),    
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      hintText: '**********************',
                      filled: true,
                      suffixIcon: Icon(Icons.visibility_sharp,
                          color: Color.fromRGBO(224, 130, 180, 1)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () => Selected(context),
                      child: Text(
                        'إرسال',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(67, 84, 160, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
