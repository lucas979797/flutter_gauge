import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gauge/handpainter.dart';
import 'package:flutter_gauge/linepainter.dart';

import 'flutter_gauge.dart';
import 'gaugetextpainter.dart';

class FlutterGaugeMain extends StatefulWidget {
  final double value;
  final int start;
  final int end;
  final double highlightStart;
  final double highlightEnd;
  final String fontFamily;
  final double widthCircle;
  final Number number;
  final CounterAlign counterAlign;
  final Hand hand;
  final bool isCircle;
  final double handSize;
  final SecondsMarker secondsMarker;
  final double shadowHand;
  final Color circleColor;
  final Color handColor;
  final Color backgroundColor;
  final Color indicatorColor;
  final double paddingHand;

  final NumberInAndOut numberInAndOut;
  final TextStyle? counterStyle;
  final TextStyle? textStyle;
  final EdgeInsets? padding;
  final Color inactiveColor;
  final Color activeColor;
  final bool isDecimal;

  FlutterGaugeMain({
    required this.value,
    required this.isDecimal,
    required this.inactiveColor,
    required this.activeColor,
    required this.textStyle,
    required this.counterStyle,
    required this.numberInAndOut,
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
    required this.start,
    required this.end,
    this.padding,
    required this.highlightStart,
    required this.highlightEnd,
    required this.fontFamily,
    required this.widthCircle,
  });

  @override
  _FlutterGaugeMainState createState() => new _FlutterGaugeMainState(
      this.start, this.end, this.highlightStart, this.highlightEnd);
}

class _FlutterGaugeMainState extends State<FlutterGaugeMain>
    with TickerProviderStateMixin {
  int start;
  int end;
  double highlightStart;
  double highlightEnd;

  double newVal = 0.0;

  _FlutterGaugeMainState(
      this.start, this.end, this.highlightStart, this.highlightEnd) {
    this.start = start;
    this.end = end;
    this.highlightStart = highlightStart;
    this.highlightEnd = highlightEnd;
  }

  @override
  Widget build(BuildContext context) {
    final DefaultTextStyle defaultTextStyle = DefaultTextStyle.of(context);
    TextStyle effectiveTextStyle =
        widget.textStyle ?? defaultTextStyle.style.merge(widget.textStyle);
    TextStyle effectiveCounterStyle = widget.counterStyle ??
        defaultTextStyle.style.merge(widget.counterStyle);

    return new Center(
      child: new LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return new Container(
          alignment: Alignment.center,
          child: new Stack(alignment: Alignment.center, children: <Widget>[
            widget.isCircle == true
                ? new Container(
                    height: constraints.maxWidth,
                    width: constraints.maxWidth,
                    padding: widget.padding,
                    child: new CustomPaint(
                        foregroundPainter: new LinePainter(
                            lineColor: this.widget.backgroundColor,
                            completeColor: this.widget.circleColor,
                            startValue: this.start,
                            endValue: this.end,
                            startPercent: this.widget.highlightStart,
                            endPercent: this.widget.highlightEnd,
                            width: this.widget.widthCircle,
                            value: widget.value)),
                  )
                : SizedBox(),
            widget.hand == Hand.none || widget.hand == Hand.short
                ? SizedBox()
                : new Center(
                    child: new Container(
                      width: widget.handSize,
                      height: widget.handSize,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        color: this.widget.indicatorColor,
                      ),
                    ),
                  ),
            Container(
                height: constraints.maxWidth,
                width: constraints.maxWidth,
//                      alignment: Alignment.center,
                // padding: EdgeInsets.only(
                //   top: widget.hand == Hand.short
                //       ? widget.widthCircle
                //       : widget.widthCircle,
                //   bottom: widget.widthCircle,
                //   right: widget.widthCircle,
                //   left: widget.widthCircle,
                // ),
                child: new CustomPaint(
                  painter: new GaugeTextPainter(
                      numberInAndOut: widget.numberInAndOut,
                      secondsMarker: widget.secondsMarker,
                      number: widget.number,
                      inactiveColor: widget.inactiveColor,
                      activeColor: widget.activeColor,
                      start: this.start,
                      end: this.end,
                      value: widget.value,
                      fontFamily: widget.fontFamily,
//                              color: this.widget.colorHourHand,
                      widthCircle: widget.widthCircle,
                      textStyle: effectiveTextStyle),
                )),
            widget.hand != Hand.none
                ? new Center(
                    child: new Container(
                    height: constraints.maxWidth,
                    width: constraints.maxWidth,
                    padding: EdgeInsets.all(widget.hand == Hand.short
                        ? widget.widthCircle / 1.5
                        : widget.paddingHand),
                    child: new CustomPaint(
                      painter: new HandPainter(
                          shadowHand: widget.shadowHand,
                          hand: widget.hand,
                          value: widget.value,
                          start: this.start,
                          end: this.end,
                          color: this.widget.handColor,
                          handSize: widget.handSize),
                    ),
                  ))
                : SizedBox(),
            Container(
              child: widget.counterAlign != CounterAlign.none
                  ? new CustomPaint(
                      painter: new GaugeTextCounter(
                          isDecimal: widget.isDecimal,
                          start: this.start,
                          width: widget.widthCircle,
                          counterAlign: widget.counterAlign,
                          end: this.end,
                          value: widget.value,
                          fontFamily: widget.fontFamily,
                          textStyle: effectiveCounterStyle),
                    )
                  : SizedBox(),
            )
          ]),
        );
      }),
    );
  }
}
