import 'package:devagram_flutter/Components/CustomTextField.dart';
import 'package:devagram_flutter/Constant/Colors.dart';
import 'package:devagram_flutter/Utils/ScreenConverter.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.only(
                    bottom: 56,
                    left: 0,
                    top: convertHeigth(133, size.height),
                    right: 0),
                child: Image.asset(
                  "assets/images/logo.png",
                  height: convertHeigth(76, size.height),
                  width: convertWidth(123, size.width),
                )),
            Padding(
              padding: EdgeInsets.only(
                  bottom: 0,
                  left: convertWidth(32, size.width),
                  top: 0,
                  right: convertWidth(32, size.width)),
              child: const CustomTextField(
                  textHint: 'Email', iconPath: 'assets/images/envelope.png'),
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: 0,
                  left: convertWidth(32, size.width),
                  top: convertHeigth(10, size.height),
                  right: convertWidth(32, size.width)),
              child: const CustomTextField(
                textHint: 'Senha',
                iconPath: 'assets/images/chave.png',
                obscureText: true,
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                    bottom: convertHeigth(24, size.height),
                    left: convertWidth(32, size.width),
                    top: convertHeigth(40, size.height),
                    right: convertWidth(32, size.width)),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: primaryColor,
                      minimumSize: Size(convertWidth(290, size.width),
                          convertHeigth(48, size.height))),
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: convertHeigth(16, size.height),
                        fontWeight: FontWeight.w600),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 0,
                  left: 0,
                  top: 0,
                  right: 0),
              child: Text(
                'Não possui conta?',
                style: TextStyle(
                    color: grayColor,
                    fontSize: convertHeigth(12, size.height),
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 0, left: 0, top: 0, right: 0),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Faça seu cadastro agora',
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: convertHeigth(12, size.height),
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
