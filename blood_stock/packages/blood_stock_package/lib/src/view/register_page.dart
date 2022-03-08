import 'package:blood_stock_package/src/auth/fire_auth.dart';
import 'package:blood_stock_package/src/auth/validator.dart';
import 'package:common_package/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../export_src.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _registerFormKey = GlobalKey<FormState>();

  final _focusName = FocusNode();
  final _focusEmail = FocusNode();
  final _focusPassword = FocusNode();

  final _nameTextController = TextEditingController();
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  bool _isProcessing = false;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, RegisterController registerController,
          Widget? widget) {
        return GestureDetector(
          onTap: () {
            _focusName.unfocus();
            _focusEmail.unfocus();
            _focusPassword.unfocus();
          },
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: ColorPalette.primary,
              title: Center(
                child: Padding(
                  padding: EdgeInsets.only(right: Spacing.x7),
                  child: Text(
                    'Cadastro',
                  ),
                ),
              ),
            ),
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
                    child:
                        SvgPicture.asset(academyAssets('logo'), height: 15.h),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Form(
                          key: _registerFormKey,
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 8.h,
                                width: 75.w,
                                child: TextFormField(
                                  controller: _nameTextController,
                                  focusNode: _focusName,
                                  validator: (value) => Validator.validateName(
                                    name: value as String,
                                  ),
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.person_outline,
                                      color: ColorPalette.textInput,
                                    ),
                                    labelText: 'Nome',
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
                              Container(
                                height: 8.h,
                                width: 75.w,
                                child: TextFormField(
                                  controller: _emailTextController,
                                  focusNode: _focusEmail,
                                  validator: (value) => Validator.validateEmail(
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
                              Container(
                                height: 8.h,
                                width: 75.w,
                                child: TextFormField(
                                  controller: _passwordTextController,
                                  focusNode: _focusPassword,
                                  validator: (value) =>
                                      Validator.validatePassword(
                                    password: value as String,
                                  ),
                                  obscureText: true,
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
                              _isProcessing
                                  ? CircularProgressIndicator()
                                  : Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                top: Spacing.x1),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      width: 0.1,
                                                      color: ColorPalette
                                                          .tertiary),
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  color: ColorPalette.primary),
                                              height: 4.8.h,
                                              width: 60.w,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  const Text('Próximo',
                                                          textAlign:
                                                              TextAlign.center)
                                                      .button(ColorPalette
                                                          .secundary)
                                                ],
                                              ),
                                            ),
                                          ),
                                          onTap: () async {
                                            setState(() {
                                              _isProcessing = true;
                                            });

                                            if (_registerFormKey.currentState!
                                                .validate()) {
                                              final status = await FireAuth
                                                  .registerUsingEmailPassword(
                                                name: _nameTextController.text,
                                                email:
                                                    _emailTextController.text,
                                                password:
                                                    _passwordTextController
                                                        .text,
                                              );

                                              setState(() {
                                                _isProcessing = false;
                                              });
                                              print(status);

                                              if (status == 'Ok') {
                                                registerController.setUser(
                                                  _nameTextController.text,
                                                  _emailTextController.text,
                                                );
                                                Navigator.of(context)
                                                    .popAndPushNamed(
                                                        Routes.donor);
                                              } else {
                                                showDialog(
                                                  context: context,
                                                  builder: (context) =>
                                                      CupertinoAlertDialog(
                                                    title: const Text(
                                                        'Ocorreu um Erro'),
                                                    content: Text(
                                                      status,
                                                    ),
                                                    actions: [
                                                      TextButton(
                                                        child: const Text(
                                                            'Fechar'),
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              }
                                            }
                                          },
                                        ),
                                      ],
                                    )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
