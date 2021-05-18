import 'package:argon_buttons_flutter/argon_buttons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:loading/indicator/ball_pulse_indicator.dart';
import 'package:loading/loading.dart';

class ArgonButtonForLoading extends StatelessWidget {
  final String buttonName;
  final double height;
  final double width;
  final double minWidth;
  final double fontSize;
  final Color color;
  final Color fontColor;
  final FontWeight fontWeight;
  final dynamic Function(Function, Function, ButtonState) onTap;

  const ArgonButtonForLoading({
    Key key,
    this.buttonName,
    this.onTap,
    this.height,
    this.width,
    this.minWidth,
    this.color,
    this.fontSize,
    this.fontWeight = FontWeight.bold,
    this.fontColor = Colors.white,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ArgonButton(
        height: height == null ? 50 : height,
        width: width == null ? 350 : width,
        minWidth: minWidth == null ? 150 : minWidth,
        borderRadius: 20.0,
        color: color == null ? Colors.blue : color,
        child: Text(
          buttonName ?? "Button",
          style: TextStyle(
            color: fontColor ?? Colors.white,
            fontSize: fontSize == null ? 22 : fontSize,
            fontWeight: fontWeight,
          ),
        ),
        loader: Container(
            padding: EdgeInsets.all(10),
            child: Loading(
                indicator: BallPulseIndicator(),
                size: 100.0,
                color: fontColor)),
        onTap: onTap,
      ),
    );
  }
}
//onTap: (startLoading, stopLoading, btnState) {},
