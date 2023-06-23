import 'package:devagram_flutter/Components/CustomTextField.dart';
import 'package:devagram_flutter/Constant/Colors.dart';
import 'package:devagram_flutter/Utils/ScreenConverter.dart';
import 'package:devagram_flutter/Views/LoginView.dart';
import 'package:flutter/material.dart';

class RegistrarView extends StatefulWidget {
  @override
  State<RegistrarView> createState() => _RegistrarViewState();
}

class _RegistrarViewState extends State<RegistrarView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(
                    bottom: convertHeigth(30, size.height),
                    left: 0,
                    top: convertHeigth(59, size.height),
                    right: 0),
                child: Stack(children: [
                  Image.asset(
                    "assets/images/avatar.png",
                    height: convertHeigth(120, size.height),
                    width: convertWidth(120, size.width),
                  ),
                  Positioned(
                      top: convertHeigth(75, size.height),
                      left: convertWidth(75, size.width),
                      child: Image.asset('assets/images/camera.png'))
                ])),
            Padding(
              padding: EdgeInsets.only(
                  bottom: 0,
                  left: convertWidth(32, size.width),
                  top: 0,
                  right: convertWidth(32, size.width)),
              child: const CustomTextField(
                  textHint: 'Nome', iconPath: 'assets/images/usuarioAtivo.png'),
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: 0,
                  left: convertWidth(32, size.width),
                  top: convertHeigth(10, size.height),
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
                  bottom: 0,
                  left: convertWidth(32, size.width),
                  top: convertHeigth(10, size.height),
                  right: convertWidth(32, size.width)),
              child: const CustomTextField(
                textHint: 'Confirmar senha',
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
                    'Cadastrar',
                    style: TextStyle(
                        fontSize: convertHeigth(16, size.height),
                        fontWeight: FontWeight.w600),
                  ),
                )),
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 0, left: 0, top: 0, right: 0),
              child: Text(
                'Já possui conta?',
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
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginView()));
                },
                child: Text(
                  'Faça seu login agora',
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
