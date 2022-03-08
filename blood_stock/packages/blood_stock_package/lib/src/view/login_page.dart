import 'package:blood_stock_package/src/auth/fire_auth.dart';
import 'package:blood_stock_package/src/auth/validator.dart';
import 'package:blood_stock_package/src/export_src.dart';
import 'package:common_package/common.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  final _focusEmail = FocusNode();
  final _focusPassword = FocusNode();

  bool _isProcessing = false;

  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();

    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      Navigator.of(context).popAndPushNamed(Routes.donor);
    }

    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (BuildContext context,
        RegisterController registerController, Widget? widget) {
      return GestureDetector(
        onTap: () {
          _focusEmail.unfocus();
          _focusPassword.unfocus();
        },
        child: Scaffold(
          backgroundColor: ColorPalette.background,
          body: SafeArea(
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Image.asset(
                  'images/svg/bloodground.jpg',
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                ),
                Padding(
                  padding: EdgeInsets.only(top: Spacing.x4_half),
                  child: SvgPicture.asset(academyAssets('logo'), height: 15.h),
                ),
                FutureBuilder(
                  future: _initializeFirebase(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Form(
                            key: _formKey,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 8.h,
                                  width: 75.w,
                                  child: TextFormField(
                                    controller: _emailTextController,
                                    focusNode: _focusEmail,
                                    validator: (value) =>
                                        Validator.validateEmail(
                                      email: value as String,
                                    ),
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.email_outlined,
                                        color: ColorPalette.textInput,
                                      ),
                                      labelText: 'Email',
                                      labelStyle: TextStyle(
                                        color: ColorPalette.textInput,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25.h)),
                                        borderSide: BorderSide(
                                            color: ColorPalette.tertiary,
                                            width: 0.5),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25.h)),
                                        borderSide: BorderSide(
                                          color: ColorPalette.primary,
                                          width: 0.5,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 8.h,
                                  width: 75.w,
                                  child: TextFormField(
                                    controller: _passwordTextController,
                                    focusNode: _focusPassword,
                                    obscureText: true,
                                    validator: (value) =>
                                        Validator.validatePassword(
                                      password: value as String,
                                    ),
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.vpn_key,
                                        color: ColorPalette.textInput,
                                      ),
                                      labelText: 'Senha',
                                      labelStyle: TextStyle(
                                        color: ColorPalette.textInput,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25.h)),
                                        borderSide: BorderSide(
                                            color: ColorPalette.tertiary,
                                            width: 0.5),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25.h)),
                                        borderSide: BorderSide(
                                          color: ColorPalette.primary,
                                          width: 0.5,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                _isProcessing
                                    ? CircularProgressIndicator()
                                    : Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: Spacing.x1),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                GestureDetector(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 0.1,
                                                            color: ColorPalette
                                                                .tertiary),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30),
                                                        color: ColorPalette
                                                            .primary),
                                                    height: 4.8.h,
                                                    width: 30.w,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        const Text('Entrar',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center)
                                                            .button(ColorPalette
                                                                .secundary)
                                                      ],
                                                    ),
                                                  ),
                                                  onTap: () async {
                                                    _focusEmail.unfocus();
                                                    _focusPassword.unfocus();

                                                    if (_formKey.currentState!
                                                        .validate()) {
                                                      setState(() {
                                                        _isProcessing = true;
                                                      });

                                                      User? user = await FireAuth
                                                          .signInUsingEmailPassword(
                                                        context: context,
                                                        email:
                                                            _emailTextController
                                                                .text,
                                                        password:
                                                            _passwordTextController
                                                                .text,
                                                      );

                                                      setState(() {
                                                        _isProcessing = false;
                                                      });

                                                      if (user != null) {
                                                        registerController
                                                            .setUser(
                                                          user.displayName ??
                                                              '',
                                                          user.email ?? '',
                                                        );
                                                        Navigator.of(context)
                                                            .popAndPushNamed(Routes
                                                                .bottomNavigationBar);
                                                      }
                                                    }
                                                  },
                                                ),
                                                SizedBox(width: Spacing.x2),
                                                GestureDetector(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 0.1,
                                                            color: ColorPalette
                                                                .tertiary),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30),
                                                        color: ColorPalette
                                                            .primary),
                                                    height: 4.8.h,
                                                    width: 30.w,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        const Text('Cadastrar',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center)
                                                            .button(ColorPalette
                                                                .secundary)
                                                      ],
                                                    ),
                                                  ),
                                                  onTap: () {
                                                    Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            RegisterPage(),
                                                      ),
                                                    );
                                                  },
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                              ],
                            ),
                          )
                        ],
                      );
                    }

                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
