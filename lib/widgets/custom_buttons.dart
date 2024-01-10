import 'package:flutter/material.dart';
import 'package:sparkling_clean/constants/textstyless.dart';

class CustomButton extends StatelessWidget {
  void Function()? onPressed;
  String? buttonName;
  Color? backgroundColor;
  CustomButton(
      {super.key, this.buttonName, this.onPressed, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: backgroundColor),
          onPressed: onPressed,
          child: Text(
            buttonName ?? "",
            style: kW5F24G.copyWith(fontSize: 18, color: Colors.white),
          )),
    );
  }
}
