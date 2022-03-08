import 'package:common_package/common.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../export_src.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _isSigningOut = false;
  late User currentUser;

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (BuildContext context,
        RegisterController registerController, Widget? widget) {
      return Scaffold(
        backgroundColor: ColorPalette.background,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40.h),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: ColorPalette.primary,
            elevation: Spacing.half,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(Spacing.x6_half),
                    bottomRight: Radius.circular(Spacing.x6_half))),
            flexibleSpace: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(Spacing.half),
                      bottomRight: Radius.circular(Spacing.half),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 19.h,
                        width: 19.h,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('images/svg/soarinho.jpg'),
                            fit: BoxFit.fill,
                          ),
                          border: Border.all(
                              color: ColorPalette.tertiary, width: 0.10.h),
                          borderRadius: BorderRadius.circular(Spacing.x10),
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: Spacing.x1_half),
                        child: Column(
                          children: [
                            Text('${registerController.name}')
                                .body2(ColorPalette.background),
                            const Text('5 meses')
                                .body2(ColorPalette.background),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            color: ColorPalette.background,
                          ),
                          const Text(' Divinópolis - MG')
                              .body1(ColorPalette.background),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            actions: <Widget>[
              _isSigningOut
                  ? CircularProgressIndicator()
                  : Container(
                      padding: EdgeInsets.only(right: 40.h),
                      child: IconButton(
                        icon: Icon(
                          Icons.exit_to_app_outlined,
                        ),
                        onPressed: () async {
                          setState(() {
                            _isSigningOut = true;
                          });
                          await FirebaseAuth.instance.signOut();
                          setState(() {
                            _isSigningOut = false;
                          });
                          Navigator.of(context)
                              .popAndPushNamed(Routes.loginPage);
                        },
                      )),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Spacing.x1_half, vertical: Spacing.x5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: Spacing.half),
                child: Text('INFORMAÇÕES').body2(ColorPalette.textInput),
              ),
              Container(
                padding: EdgeInsetsDirectional.all(Spacing.x1_half),
                width: 50.h,
                height: 15.h,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: ColorPalette.tertiary.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: const Offset(0, 2)),
                    ],
                    border:
                        Border.all(color: ColorPalette.background, width: 2),
                    borderRadius: BorderRadius.circular(Spacing.x3),
                    color: ColorPalette.background),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Tipo Sanguíneo')
                            .subtitle1(ColorPalette.textInput),
                        Text('O-').subtitle2(ColorPalette.textInput)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Peso').subtitle1(ColorPalette.textInput),
                        Text('9kg').subtitle2(ColorPalette.textInput)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sexo').subtitle1(ColorPalette.textInput),
                        Text('Masculino').subtitle2(ColorPalette.textInput)
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: Spacing.x3, bottom: Spacing.half),
                child: Text('DOAÇÕES').body2(ColorPalette.textInput),
              ),
              Container(
                padding: EdgeInsetsDirectional.all(Spacing.x1_half),
                width: 50.h,
                height: 12.h,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: ColorPalette.tertiary.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: const Offset(0, 2)),
                    ],
                    border:
                        Border.all(color: ColorPalette.background, width: 2),
                    borderRadius: BorderRadius.circular(Spacing.x3),
                    color: ColorPalette.background),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Última Doação').subtitle1(ColorPalette.textInput),
                        Text('15/04/2020').subtitle2(ColorPalette.textInput)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Próxima doação')
                            .subtitle1(ColorPalette.textInput),
                        Text('05/08/2020').subtitle2(ColorPalette.textInput)
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
