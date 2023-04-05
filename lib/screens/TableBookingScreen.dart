import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tawla_app/widgets/TableBookingContent.dart';

class TableBookingScreen extends StatelessWidget {
  const TableBookingScreen({Key? key}) : super(key: key);
  static String routeName = 'Table-Booking-Screen';

  @override
  Widget build(BuildContext context) {
    return TableBookingContent();
  }
}
