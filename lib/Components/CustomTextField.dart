import 'package:devagram_flutter/Constant/Colors.dart';
import 'package:devagram_flutter/Utils/ScreenConverter.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.textHint,
    required this.iconPath,
    this.obscureText = false,
  });

  final String textHint;
  final String iconPath;
  final obscureText;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ConstrainedBox(
      constraints: BoxConstraints(
          minWidth: size.width,
          maxWidth: size.width,
          maxHeight: convertHeigth(35, size.height),
          minHeight: convertHeigth(35, size.height)),
      child: DecoratedBox(
        decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(width: 1, color: primaryColor))),
        child: TextField(
          obscureText: obscureText,
          style: const TextStyle(color: primaryColor),
          decoration: InputDecoration(
              icon: ImageIcon(AssetImage(iconPath), color: primaryColor),
              hintText: textHint,
              border: InputBorder.none),
        ),
      ),
    );
  }
}
