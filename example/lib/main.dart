import 'package:flutter/material.dart';
import 'package:flutter_gauge/flutter_gauge.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 60),
            child: FlutterGauge(
              hand: Hand.short,
              number: Number.endAndCenterAndStart,
              secondsMarker: SecondsMarker.secondsAndMinute,
              counterStyle: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: FlutterGauge(
                  hand: Hand.short,
                  number: Number.endAndCenterAndStart,
                  secondsMarker: SecondsMarker.secondsAndMinute,
                  counterStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
              ),
//              Expanded(child: FlutterGauge(secondsMarker: SecondsMarker.none,hand: Hand.short,number: Number.none,width: 200,index: 38.0,fontFamily: "Iran",counterStyle: TextStyle(color: Colors.black,fontSize: 35),counterAlign: CounterAlign.center,isDecimal: false),),
            ],
          ),
          FlutterGauge(
              handSize: 30,
              fontFamily: "Iran",
              end: 100,
              number: Number.endAndCenterAndStart,
              secondsMarker: SecondsMarker.secondsAndMinute,
              counterStyle: TextStyle(
                color: Colors.black,
                fontSize: 25,
              )),
          FlutterGauge(
              handSize: 30,
              fontFamily: "Iran",
              end: 100,
              number: Number.endAndCenterAndStart,
              secondsMarker: SecondsMarker.secondsAndMinute,
              hand: Hand.short,
              counterStyle: TextStyle(
                color: Colors.black,
                fontSize: 22,
              )),
          Center(
            child: Container(
                height: 200,
                width: 200,
                color: Colors.black38,
                child: FlutterGauge(
                  currentValue: 50,
                  inactiveColor: Colors.white38,
                  activeColor: Colors.white,
                  end: 400,
                  number: Number.none,
                  secondsMarker: SecondsMarker.minutes,
                  isCircle: false,
                  hand: Hand.none,
                  counterAlign: CounterAlign.center,
                  counterStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                  isDecimal: true,
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: FlutterGauge(
                    counterStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                    widthCircle: 10,
                    secondsMarker: SecondsMarker.none,
                    number: Number.all),
              ),
//              Expanded(child: FlutterGauge(index: 25.0,counterStyle : TextStyle(color: Colors.black,fontSize: 25,),secondsMarker: SecondsMarker.secondsAndMinute,number: Number.all,numberInAndOut: NumberInAndOut.outside,)),
            ],
          ),
          Row(
            children: <Widget>[
//              Expanded(child: FlutterGauge(handSize: 30,width: 200,index: 65.0,fontFamily: "Iran",end: 100,number: Number.endAndCenterAndStart,secondsMarker: SecondsMarker.secondsAndMinute,counterStyle: TextStyle(color: Colors.black,fontSize: 25,)),),
//              Expanded(child: FlutterGauge(secondsMarker: SecondsMarker.none,hand: Hand.short,number: Number.none,width: 200,index: 38.0,fontFamily: "Iran",counterStyle: TextStyle(color: Colors.black,fontSize: 35),counterAlign: CounterAlign.center,isDecimal: false),),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: FlutterGauge(
                    handSize: 30,
                    fontFamily: "Iran",
                    end: 100,
                    number: Number.endAndCenterAndStart,
                    secondsMarker: SecondsMarker.secondsAndMinute,
                    hand: Hand.short,
                    counterStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                    )),
              ),
//              Expanded(child: FlutterGauge(handSize: 30,width: 200,index: 65.0,fontFamily: "Iran",end: 500,number: Number.endAndStart,secondsMarker: SecondsMarker.minutes,isCircle: false,counterStyle: TextStyle(color: Colors.black,fontSize: 25,)),),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                    color: Colors.black38,
                    child: FlutterGauge(
                      inactiveColor: Colors.white38,
                      activeColor: Colors.white,
                      handSize: 30,
                      fontFamily: "Iran",
                      end: 400,
                      number: Number.none,
                      secondsMarker: SecondsMarker.minutes,
                      isCircle: false,
                      hand: Hand.none,
                      counterAlign: CounterAlign.center,
                      counterStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                      isDecimal: false,
                    )),
              ),
//              Expanded(child: FlutterGauge(width: 200,index: 67.3,fontFamily: "Iran",counterStyle: TextStyle(color: Colors.black,fontSize: 35,),numberInAndOut: NumberInAndOut.outside,counterAlign: CounterAlign.center,secondsMarker: SecondsMarker.secondsAndMinute,hand: Hand.short),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: FlutterGauge(
                    counterStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                    widthCircle: 10,
                    secondsMarker: SecondsMarker.none,
                    number: Number.all),
              ),
//              Expanded(child: FlutterGauge(index: 25.0,counterStyle : TextStyle(color: Colors.black,fontSize: 25,),secondsMarker: SecondsMarker.secondsAndMinute,number: Number.all,numberInAndOut: NumberInAndOut.outside,)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: FlutterGauge(
                    counterStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                    widthCircle: 10,
                    secondsMarker: SecondsMarker.none,
                    number: Number.all),
              ),
            ],
          ),
          FlutterGauge(
              handSize: 30,
              fontFamily: "Iran",
              end: 100,
              number: Number.endAndCenterAndStart,
              secondsMarker: SecondsMarker.secondsAndMinute,
              counterStyle: TextStyle(
                color: Colors.black,
                fontSize: 25,
              )),
          FlutterGauge(
              counterStyle: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
              widthCircle: 10,
              secondsMarker: SecondsMarker.none,
              number: Number.all),
        ],
      ),
    );
  }
}
