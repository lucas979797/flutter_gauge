library flutter_gauge;

import 'package:flutter/material.dart';
import 'package:flutter_gauge/fluttergauge.dart';

enum SecondsMarker { minutes, secondsAndMinute, all, none, seconds }

enum Number {
  all,
  endAndStart,
  endAndCenterAndStart,
  none,
}

enum NumberInAndOut { inside, outside }

enum CounterAlign {
  none,
  center,
  top,
  bottom,
}

enum Hand { none, long, short }

class FlutterGauge extends StatelessWidget {
  final int start;
  final int end;
  final String fontFamily;
  final double widthCircle;
  final Number number;
  final NumberInAndOut numberInAndOut;
  final CounterAlign counterAlign;
  final Hand hand;
  final bool isCircle;
  final double handSize;
  final bool isDecimal;
  final SecondsMarker secondsMarker;
  final double shadowHand;
  final Color circleColor;
  final Color handColor;
  final Color backgroundColor;
  final Color indicatorColor;
  final Color inactiveColor;
  final Color activeColor;
  final double paddingHand;
  final TextStyle? counterStyle;
  final TextStyle? textStyle;

  FlutterGauge({
    this.isDecimal = true,
    this.inactiveColor = Colors.black,
    this.activeColor = Colors.red,
    this.textStyle,
    this.counterStyle,
    this.numberInAndOut = NumberInAndOut.inside,
    this.paddingHand = 30.0,
    this.circleColor = Colors.cyan,
    this.handColor = Colors.black,
    this.backgroundColor = Colors.cyan,
    this.indicatorColor = Colors.black,
    this.shadowHand = 4.0,
    this.counterAlign = CounterAlign.bottom,
    this.number = Number.all,
    this.isCircle = true,
    this.hand = Hand.long,
    this.secondsMarker = SecondsMarker.all,
    this.handSize = 30,
    this.start = 0,
    this.end = 100,
    this.fontFamily = "",
    this.widthCircle = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        FlutterGaugeMain(
          isDecimal: isDecimal,
          counterStyle: counterStyle,
          textStyle: textStyle,
          numberInAndOut: numberInAndOut,
          paddingHand: paddingHand,
          circleColor: circleColor,
          handColor: handColor,
          backgroundColor: backgroundColor,
          indicatorColor: indicatorColor,
          shadowHand: shadowHand,
          counterAlign: counterAlign,
          number: number,
          isCircle: isCircle,
          hand: hand,
          secondsMarker: secondsMarker,
          handSize: handSize,
          start: start,
          end: end,
          highlightStart: (end / end.toInt()),
          highlightEnd: (0 / end.toInt()),
          fontFamily: fontFamily,
          widthCircle: widthCircle > 30 ? 30 : widthCircle,
          inactiveColor: inactiveColor,
          activeColor: activeColor,
        )
      ],
    );
  }
}
