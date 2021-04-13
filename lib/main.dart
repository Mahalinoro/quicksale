import 'package:Quicksale/views/authentication_views_screen/forgotpassword.views.dart';
import 'package:Quicksale/views/authentication_views_screen/index.views.dart';
import 'package:Quicksale/views/authentication_views_screen/login.views.dart';
import 'package:Quicksale/views/authentication_views_screen/resetcode.views.dart';
import 'package:Quicksale/views/authentication_views_screen/signup.views.dart';
import 'package:Quicksale/views/onboarding_views_screen/onboarding.first.view.dart';
import 'package:Quicksale/views/onboarding_views_screen/onboarding.fourth.view.dart';
import 'package:Quicksale/views/onboarding_views_screen/onboarding.second.view.dart';
import 'package:Quicksale/views/onboarding_views_screen/onboarding.third.view.dart';
import 'package:Quicksale/views/profile_views_sceen/drawer.views.dart';
import 'package:Quicksale/views/profile_views_sceen/favorites.views.dart';
import 'package:Quicksale/views/profile_views_sceen/history.views.dart';
import 'package:Quicksale/views/profile_views_sceen/manage.views.dart';
import 'package:Quicksale/views/profile_views_sceen/personalinfo.views.dart';
import 'package:Quicksale/views/profile_views_sceen/profile.views.dart';
import 'package:Quicksale/views/profile_views_sceen/settings.views.dart';
import 'package:Quicksale/views/profile_views_sceen/upload.views.dart';
import 'package:Quicksale/views/shop_views_screen/checkout.views.dart';
import 'package:Quicksale/views/shop_views_screen/discover.views.dart';
import 'package:Quicksale/views/shop_views_screen/item.views.dart';
import 'package:Quicksale/views/shop_views_screen/mycart.views.dart';
import 'package:Quicksale/views/shop_views_screen/payment.views.dart';
import 'package:Quicksale/views/shop_views_screen/success.views.dart';
import 'package:Quicksale/views/splash_views_screen/splash.view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

FlutterLocalNotificationsPlugin localNotification;
//  function to display Notification

Future<void> _zonedScheduleNotification() async {
  tz.initializeTimeZones();
  tz.setLocalLocation(tz.getLocation("Africa/Kigali"));
  await localNotification.zonedSchedule(
      0,
      'Welcome to quickSale',
      'Thanks for downloading quicksale App',
      tz.TZDateTime.now(tz.local).add(const Duration(seconds: 5)),
      const NotificationDetails(
          android: AndroidNotificationDetails(
              'quickSale', 'Welcome notification', 'Welcome to quickSale')),
      androidAllowWhileIdle: true,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime);
}

void main() async {
  // firebase set-up

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  //  local notification set-up

  var andriodInitialize = AndroidInitializationSettings('ic_launcher');
  var initializationSettingsIOS = IOSInitializationSettings();
  final InitializationSettings initializationSettings = InitializationSettings(
      android: andriodInitialize, iOS: initializationSettingsIOS);
  localNotification = new FlutterLocalNotificationsPlugin();
  localNotification.initialize(initializationSettings);
  _zonedScheduleNotification();

  runApp(MaterialApp(
    title: 'QuickSale',
    initialRoute: Home.id,
    routes: {
      Home.id: (context) => Home(),
      ForgotPassword.id: (context) => ForgotPassword(),
      GetStarted.id: (context) => GetStarted(),
      Login.id: (context) => Login(),
      ResetCode.id: (context) => ResetCode(),
      SignUp.id: (context) => SignUp(),
      OnboardingFirst.id: (context) => OnboardingFirst(),
      OnboardingSecond.id: (context) => OnboardingSecond(),
      OnboardingThird.id: (context) => OnboardingThird(),
      OnboardingFourth.id: (context) => OnboardingFourth(),
      CustomDrawer.id: (context) => CustomDrawer(),
      Favorites.id: (context) => Favorites(),
      History.id: (context) => History(),
      ManageSale.id: (context) => ManageSale(),
      PersonalInfo.id: (context) => PersonalInfo(),
      Profile.id: (context) => Profile(),
      Settings.id: (context) => Settings(),
      UploadItem.id: (context) => UploadItem(),
      Discover.id: (context) => Discover(),
      Item.id: (context) => Item(),
      MyCart.id: (context) => MyCart(),
      Payment.id: (context) => Payment(),
      PaymentSuccess.id: (context) => PaymentSuccess(),
      Checkout.id: (context) => Checkout(),
    },
  ));
}
