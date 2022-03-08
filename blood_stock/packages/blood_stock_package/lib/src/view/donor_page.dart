import 'package:flutter/material.dart';
import 'package:common_package/common.dart';

class DonorPage extends StatefulWidget {
  const DonorPage({Key? key}) : super(key: key);

  @override
  _DonorPageState createState() => _DonorPageState();
}

class _DonorPageState extends State<DonorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalette.primary,
        title: Center(
          child: Padding(
            padding: EdgeInsets.only(right: Spacing.x7),
            child: Text(
              'Dados do Doador',
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Image.asset(
              'images/svg/b.jpg',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Padding(
              padding: EdgeInsets.only(top: Spacing.x4_half),
              child: SvgPicture.asset(academyAssets('logo'), height: 15.h),
            ),
            Padding(
              padding: EdgeInsets.only(top: 27.h),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: Spacing.x1),
                      child: Container(
                        height: 6.h,
                        width: 75.w,
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.house_outlined,
                              color: ColorPalette.textInput,
                            ),
                            labelText: 'Cidade',
                            labelStyle: TextStyle(
                              color: ColorPalette.textInput,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(25.h),
                              ),
                              borderSide: BorderSide(
                                color: ColorPalette.tertiary,
                                width: 0.5,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(25.h),
                              ),
                              borderSide: BorderSide(
                                color: ColorPalette.primary,
                                width: 0.5,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: Spacing.x1),
                      child: Container(
                        height: 6.h,
                        width: 75.w,
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.location_on_outlined,
                              color: ColorPalette.textInput,
                            ),
                            labelText: 'Estado',
                            labelStyle: TextStyle(
                              color: ColorPalette.textInput,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(25.h),
                              ),
                              borderSide: BorderSide(
                                color: ColorPalette.tertiary,
                                width: 0.5,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(25.h),
                              ),
                              borderSide: BorderSide(
                                color: ColorPalette.primary,
                                width: 0.5,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 6.h,
                      width: 75.w,
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.calendar_today_outlined,
                            color: ColorPalette.textInput,
                          ),
                          labelText: 'Aniversário',
                          labelStyle: TextStyle(
                            color: ColorPalette.textInput,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25.h),
                            ),
                            borderSide: BorderSide(
                              color: ColorPalette.tertiary,
                              width: 0.5,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25.h),
                            ),
                            borderSide: BorderSide(
                              color: ColorPalette.primary,
                              width: 0.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: Spacing.x1),
                      child: Container(
                        height: 6.h,
                        width: 75.w,
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.phone_android_outlined,
                              color: ColorPalette.textInput,
                            ),
                            labelText: 'Telefone',
                            labelStyle: TextStyle(
                              color: ColorPalette.textInput,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(25.h),
                              ),
                              borderSide: BorderSide(
                                color: ColorPalette.tertiary,
                                width: 0.5,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(25.h),
                              ),
                              borderSide: BorderSide(
                                color: ColorPalette.primary,
                                width: 0.5,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 6.h,
                      width: 75.w,
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.close_outlined,
                            color: ColorPalette.textInput,
                          ),
                          labelText: 'Sexo',
                          labelStyle: TextStyle(
                            color: ColorPalette.textInput,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25.h),
                            ),
                            borderSide: BorderSide(
                              color: ColorPalette.tertiary,
                              width: 0.5,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25.h),
                            ),
                            borderSide: BorderSide(
                              color: ColorPalette.primary,
                              width: 0.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: Spacing.x1),
                      child: Container(
                        height: 6.h,
                        width: 75.w,
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.monitor_weight_outlined,
                              color: ColorPalette.textInput,
                            ),
                            labelText: 'Peso',
                            labelStyle: TextStyle(
                              color: ColorPalette.textInput,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(25.h),
                              ),
                              borderSide: BorderSide(
                                color: ColorPalette.tertiary,
                                width: 0.5,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(25.h),
                              ),
                              borderSide: BorderSide(
                                color: ColorPalette.primary,
                                width: 0.5,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 6.h,
                      width: 75.w,
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.invert_colors_on_outlined,
                            color: ColorPalette.textInput,
                          ),
                          labelText: 'Tipo Sanguíneo',
                          labelStyle: TextStyle(
                            color: ColorPalette.textInput,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25.h),
                            ),
                            borderSide: BorderSide(
                              color: ColorPalette.tertiary,
                              width: 0.5,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25.h),
                            ),
                            borderSide: BorderSide(
                              color: ColorPalette.primary,
                              width: 0.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: Padding(
                        padding: EdgeInsets.only(top: Spacing.x1_half),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 0.1, color: ColorPalette.tertiary),
                              borderRadius: BorderRadius.circular(30),
                              color: ColorPalette.primary),
                          height: 4.8.h,
                          width: 60.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Cadastrar',
                                      textAlign: TextAlign.center)
                                  .button(ColorPalette.secundary)
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context)
                            .popAndPushNamed(Routes.bottomNavigationBar);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
