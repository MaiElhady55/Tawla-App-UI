import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tawla_app/widgets/TableBookingContent.dart';

class SaveEditBooking extends StatelessWidget {
  const SaveEditBooking({Key? key}) : super(key: key);
    static String routeName = 'Save-Edit-Booking-Screen';


  @override
  Widget build(BuildContext context) {
    return TableBookingContent(keyword: 'edit',);
  }
}