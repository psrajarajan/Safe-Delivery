import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Garbaratchambigai extends StatefulWidget {
  @override
  _GarbaratchambigaiState createState() => _GarbaratchambigaiState();
}

class _GarbaratchambigaiState extends State<Garbaratchambigai> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(320, 470),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Garbaratchambigai Amman',
        theme: ThemeData(
            primaryColor: Colors.brown.shade800,
            textTheme: TextTheme(button: TextStyle(fontSize: 45.sp))),
        builder: (context, widget) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget,
          );
        },
        home: SafeArea(
          minimum: const EdgeInsets.all(3),
          maintainBottomViewPadding: false,
          child: Scaffold(
            backgroundColor: Colors.lightBlue.shade300,
            appBar: AppBar(
              title: Text(
                'கர்ப்பரட்சாம்பிகை அம்மன் துணை',
                style: TextStyle(
                  fontFamily: 'meera',
                  fontSize: 14.sp,
                  color: Colors.white,
                ),
              ),
              toolbarHeight: 70,
              centerTitle: true,
              backgroundColor: Colors.deepPurple,
              actionsIconTheme: IconThemeData(
                size: 40.0,
                color: Colors.white,
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.close),
                  iconSize: 40.0,
                  onPressed: () {
                    SystemChannels.platform
                        .invokeMapMethod('SystemNavigator.pop');
                  },
                ),
              ],
              automaticallyImplyLeading: true,
              elevation: 4.0,
            ),
            body: MyHomePage(),
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isFirstLine = false;
  bool _isSecondLine = false;
  bool _isThirdLine = false;
  bool _isFourthLine = false;

  bool _isStartClick = false;
  bool _isEnabled = false;
  bool _isCompleted = false;
  int _isSlogan = 0;

  _linesAppear() {
    _isStartClick = true;
    if (_isEnabled == true && _isSlogan < 6) {
      setState(() {
        _isFirstLine = false;
        _isSecondLine = false;
        _isThirdLine = false;
        _isFourthLine = false;
      });

      Future.delayed(const Duration(milliseconds: 200), () {
        if (_isFirstLine == false) {
          setState(() {
            _isFirstLine = true;
            _isEnabled = false;
            _isSlogan = _isSlogan + 1;
          });
        }
      });
      Future.delayed(const Duration(milliseconds: 1200), () {
        if (_isFirstLine == true && _isSecondLine == false) {
          setState(() {
            _isSecondLine = true;
          });
        }
      });
      Future.delayed(const Duration(milliseconds: 2400), () {
        if (_isFirstLine == true &&
            _isSecondLine == true &&
            _isThirdLine == false) {
          setState(() {
            _isThirdLine = true;
          });
        }
      });

      Future.delayed(const Duration(milliseconds: 3600), () {
        if (_isFirstLine == true &&
            _isSecondLine == true &&
            _isThirdLine == true &&
            _isFourthLine == false) {
          setState(() {
            _isFourthLine = true;
            _isEnabled = true;
          });
        }
      });
    } else {
      setState(() {
        _isFirstLine = false;
        _isSecondLine = false;
        _isThirdLine = false;
        _isFourthLine = false;
        _isEnabled = false;
        _isCompleted = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _isEnabled = true;
    _isStartClick = false;
    _isCompleted = false;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return Scaffold(
        backgroundColor: Colors.lightGreen.shade100,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 0.03.sh,
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  Text(
                    'சுகப்பிரசவம் அருளும்',
                    style: TextStyle(
                      fontFamily: 'meera',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                  ),
                  SizedBox(
                    height: 0.02.sh,
                  ),
                  Text('கர்ப்பரட்சாம்பிகை',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown,
                      )),
                  SizedBox(
                    height: 0.015.sh,
                  ),
                  Text('அம்மன் சுலோகம்',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown,
                      )),
                  SizedBox(
                    height: 0.02.sh,
                  ),
                ],
              ),
            ),
            Container(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('கர்ப்பிணிப் பெண்ணும், அவருக்காகப் பிறரும்',
                        style: TextStyle(
                          fontFamily: 'meera',
                          fontSize: 12.0.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.green.shade600,
                        )),
                    Text(
                      'தினமும், நேரம் கிடைக்கும் போதெல்லாம்',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.0.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.green.shade600,
                      ),
                    ),
                    Text(
                      '108 முறை பாராயணம் செய்யலாம்.',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.0.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.green.shade600,
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 0.015.sh,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.fromLTRB(3, 0, 0, 0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/garbaratchambigai_second_page.png"),
                      fit: BoxFit.contain),
                ),
              ),
            ),
            SizedBox(
              height: 0.02.sh,
            ),
            Container(
                child: Text('ஹிமவத் யுத்தரே பார்ஸ்வே',
                    style: TextStyle(
                      fontFamily: 'meera',
                      fontSize: 21.sp,
                      fontWeight: FontWeight.bold,
                      color: _isFirstLine ? Colors.deepPurple : Colors.black12,
                    ))),
            Container(
                child: Text('ஸுரதா நாம யக்ஷிணீ ! ',
                    style: TextStyle(
                      fontFamily: 'meera',
                      fontSize: 21.sp,
                      fontWeight: FontWeight.bold,
                      color: _isSecondLine ? Colors.deepPurple : Colors.black12,
                    ))),
            Container(
                child: Text('தஸ்யா: ஸ்மரண மாத்ரேண',
                    style: TextStyle(
                      fontFamily: 'meera',
                      fontSize: 21.sp,
                      fontWeight: FontWeight.bold,
                      color: _isThirdLine ? Colors.deepPurple : Colors.black12,
                    ))),
            Container(
                child: Text('விஸல்யா கர்ப்பிணீ  பவேது',
                    style: TextStyle(
                      fontFamily: 'meera',
                      fontSize: 21.sp,
                      fontWeight: FontWeight.bold,
                      color: _isFourthLine ? Colors.deepPurple : Colors.black12,
                    ))),
            SizedBox(
              height: 0.03.sh,
            ),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.topRight,
                    child: Text(_isStartClick ? '' : 'பாராயணம் தொடங்க',
                        style: TextStyle(
                          fontFamily: 'meera',
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade600,
                        )),
                  ),
                ),
                SizedBox(
                  width: 0.010.sw,
                ),
                InkWell(
                    onTap: _isEnabled
                        ? () {
                            _linesAppear();
                          }
                        : null,
                    child: Container(
                        alignment: Alignment.center,
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _isCompleted
                              ? Colors.transparent
                              : Colors.brown.shade400,
                        ),
                        child: Text(_isSlogan.toString(),
                            style: TextStyle(
                                fontSize: 18.0.sp,
                                color: _isStartClick
                                    ? Colors.white70
                                    : Colors.transparent,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'nunito')))),
                SizedBox(
                  width: 0.008.sw,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(_isStartClick ? '' : 'இங்கே  தட்டவும்',
                        style: TextStyle(
                          fontFamily: 'meera',
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade600,
                        )),
                  ),
                ),
              ],
            )),
            SizedBox(
              height: 0.03.sh,
            ),
          ],
        )));
  }
}
