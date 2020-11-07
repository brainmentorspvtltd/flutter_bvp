import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fk_appwend/screens/i18ndemo.dart';
import 'package:fk_appwend/screens/paymentpage.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();

  // Camera
  runApp(MaterialApp(
      title: 'Camera',
      //home: CameraDemo(),
      home: PaymentPage()));
  // I18N
  // runApp(
  //   EasyLocalization(
  //       supportedLocales: [Locale('en', 'US'), Locale('hi', 'IN')],
  //       path: 'assets/translations', // <-- change patch to your
  //       fallbackLocale: Locale('en', 'US'),
  //       child: MyApp()),
  // );

  /*runApp(MaterialApp(
    title: 'FlipKart Clone',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        backgroundColor: Colors.white,
        appBarTheme:
            AppBarTheme(color: Color(Constants.FLIPKART_BLUE), elevation: 5)),
    //home: SplashScreen(),

    routes: <String, WidgetBuilder>{
      Constants.ROOT_ROUTE: (BuildContext context) => SplashScreen(),
      Constants.HOME_ROUTE: (ctx) => HomeScreen()
    },
  ));*/
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I18NDemo',
      home: I18NDemo(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}