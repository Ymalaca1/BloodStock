import 'package:common_package/common.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _navigate(context);
    return Container(
      height: 100.h,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(academyAssets2('splash'))),
      ),
    );
  }

  Future<void> _navigate(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 4));
    Navigator.of(context).popAndPushNamed(Routes.home);
  }
}
