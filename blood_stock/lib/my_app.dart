import 'package:blood_stock/splash.dart';
import 'package:blood_stock_package/blood_stock_package.dart';
import 'package:common_package/common.dart';
import 'package:flutter/material.dart';
import 'home_page/welcome_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => RegisterController())
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: LoginPage(),
          routes: {
            Routes.loginPage: (context) => LoginPage(),
            Routes.cadastro: (context) => RegisterPage(),
            Routes.home: (context) => WelcomePage(),
            Routes.feedPage: (context) => FeedPage(),
            Routes.bottomNavigationBar: (context) => MainHomePage(),
            Routes.donor: (context) => DonorPage(),
          },
        ),
      );
    });
  }
}
