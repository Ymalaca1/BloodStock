import 'package:flutter/material.dart';
import 'package:common_package/common.dart';
import 'utils/carousel_map.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int carouselIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.secundary,
      body: SafeArea(child: _handleBody()),
    );
  }

  Widget _handleBody() {
    return Container(
        padding: EdgeInsets.all(Spacing.x3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [_logo(), _bloodCarousel(), _button()],
        ));
  }

  Widget _logo() {
    return SvgPicture.asset(academyAssets('logo'), height: 15.h);
  }

  Widget _bloodCarousel() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(top: Spacing.half),
        child: Column(
          children: [_slider(), _carouselIndicator()],
        ),
      ),
    );
  }

  Widget _slider() {
    return Expanded(
      child: CarouselSlider(
        items: List.generate(
            carouselMap.length,
            (index) => carouselBuilder(
                  image: carouselMap[index]["image"],
                  title: carouselMap[index]["title"],
                  subtitle: carouselMap[index]["subtitle"],
                  onTap: carouselMap[index]["onTap"],
                )),
        options: CarouselOptions(
            viewportFraction: 1.0,
            disableCenter: true,
            onPageChanged: (int index, _) =>
                setState(() => carouselIndex = index)),
      ),
    );
  }

  Widget carouselBuilder(
      {required String image,
      required String title,
      required String subtitle,
      Function(BuildContext)? onTap}) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => onTap != null ? onTap(context) : {},
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: Spacing.x3),
            child: SvgPicture.asset(academyAssets(image), height: 33.h),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: Spacing.half),
            child: Text(
              title,
              textAlign: TextAlign.center,
            ).headline4(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: Spacing.half),
            child: Text(
              subtitle,
              textAlign: TextAlign.center,
            ).body1(),
          ),
        ],
      ),
    );
  }

  Widget _carouselIndicator() {
    return Container(
      padding: EdgeInsets.only(bottom: Spacing.x6_half),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _indicator(carouselIndex == 0),
          _indicator(carouselIndex == 1),
          _indicator(carouselIndex == 2)
        ],
      ),
    );
  }

  Widget _indicator([bool enabled = false]) {
    return Container(
      height: Spacing.x1,
      width: Spacing.x1,
      margin: EdgeInsets.symmetric(horizontal: Spacing.half),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: enabled ? ColorPalette.primary : ColorPalette.tertiary),
    );
  }

  Widget _button() {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 0.1, color: ColorPalette.tertiary),
            borderRadius: BorderRadius.circular(30),
            color: ColorPalette.primary),
        height: 6.h,
        width: 40.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Iniciar sessão', textAlign: TextAlign.center)
                .button(ColorPalette.secundary)
          ],
        ),
      ),
      onTap: () {
        Navigator.of(context).popAndPushNamed(Routes.loginPage);
      },
    );
  }
}
