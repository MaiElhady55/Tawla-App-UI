import 'package:flutter/material.dart';
import 'package:tawla_app/screens/AboutAppScreen.dart';
import 'package:tawla_app/screens/AccountScreen.dart';
import 'package:tawla_app/screens/AwaitintPaymentScreen.dart';
import 'package:tawla_app/screens/BookingsScreen.dart';
import 'package:tawla_app/screens/CanceledRequests.dart';
import 'package:tawla_app/screens/ChangePasswordScreen.dart';
import 'package:tawla_app/screens/CompletedRequests.dart';
import 'package:tawla_app/screens/ContactusScreen.dart';
import 'package:tawla_app/screens/EditBookingScreen.dart';
import 'package:tawla_app/screens/EditingDataScreen.dart';
import 'package:tawla_app/screens/FavoritesScreen.dart';
import 'package:tawla_app/screens/ForgotPasswordScreen.dart';
import 'package:tawla_app/screens/HomePage.dart';
import 'package:tawla_app/screens/LocationScreen.dart';
import 'package:tawla_app/screens/LoginScreen.dart';
import 'package:tawla_app/screens/NewPasswordScreen.dart';
import 'package:tawla_app/screens/NotificationScreen.dart';
import 'package:tawla_app/screens/OnGoingRequests.dart';
import 'package:tawla_app/screens/RegisterScreenThree.dart';
import 'package:tawla_app/screens/Resturant1.dart';
import 'package:tawla_app/screens/SaveEditBooking.dart';
import 'package:tawla_app/screens/SearchScreen.dart';
import 'package:tawla_app/screens/SuccessScreen.dart';
import 'package:tawla_app/screens/TableBookingScreen.dart';
import 'package:tawla_app/screens/TermsConditionsScreen.dart';
import 'package:tawla_app/screens/WalletScreen.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return {
    LogInScreen.routeName: (context) => LogInScreen(),
    AccountScreen.routeName: (context) => AccountScreen(),
    HomePage.roueName: (context) => HomePage(),
    ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
    RegisterScreenOThree.routeName: (context) => RegisterScreenOThree(),
    NotificationScreen.routeName: (context) => NotificationScreen(),
    TableBookingScreen.routeName: (context) => TableBookingScreen(),
    BookingsScreen.routeName: (context) => BookingsScreen(),
    SuccessScreen.routeName: (context) => SuccessScreen(),
    EditBookingScreen.routeName: (context) => EditBookingScreen(),
    SaveEditBooking.routeName: (context) => SaveEditBooking(),
    AwaitingPaymentScreen.routeName: (context) => AwaitingPaymentScreen(),
    OnGoingRequestsScreen.routeName: (context) => OnGoingRequestsScreen(),
    CompletedRequestsScreen.routeName: (context) => CompletedRequestsScreen(),
    CanceledRequestsScreen.routeName: (context) => CanceledRequestsScreen(),
    FavoritesScreen.routeName: (context) => FavoritesScreen(),
    WalletScreen.routeName: (context) => WalletScreen(),
    ContactusScreen.routeName: (context) => ContactusScreen(),
    AboutAppScree.routeName: (context) => AboutAppScree(),
    TermsConditionsScreen.routeName: (context) => TermsConditionsScreen(),
    ResturantOne.routeName: (context) => ResturantOne(),
    EditingDataScreen.routeName: (context) => EditingDataScreen(),
    ChangePasswordScreen.routeName: (context) => ChangePasswordScreen(),
    NewPasswordScreen.routeName: (context) => NewPasswordScreen(),
    SearchScreen.routeNabe: (context) => SearchScreen(),
    LocationScreen.routeName:(context) => LocationScreen(),
  };
}
