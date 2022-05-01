import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'garbaratchambigai.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(320, 470),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Garbaratchambigai Amman',
        theme: ThemeData(
            primaryColor: Colors.deepPurple,
            textTheme: TextTheme(button: TextStyle(fontSize: 36.sp))),
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/garbaratchambigai': (context) => Garbaratchambigai(),
        },
        builder: (context, widget) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget,
          );
        },
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        minimum: const EdgeInsets.all(3),
        maintainBottomViewPadding: false,
        child: Scaffold(
          backgroundColor: Colors.yellow.shade400,
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
            elevation: 4.0,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 0.03.sh,
                ),
                Container(
                    alignment: Alignment.bottomCenter,
                    child: Text('சுகப்பிரசவம் அருளும்',
                        style: TextStyle(
                          fontFamily: 'meera',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown.shade800,
                        ))),
                SizedBox(
                  height: .02.sh,
                ),
                Container(
                    alignment: Alignment.center,
                    child: Text('கர்ப்பரட்சாம்பிகை',
                        style: TextStyle(
                          fontFamily: 'meera',
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown.shade800,
                        ))),
                SizedBox(
                  height: .015.sh,
                ),
                Container(
                    child: Text('அம்மன் சுலோகம்',
                        style: TextStyle(
                          fontFamily: 'meera',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown.shade800,
                        ))),
                SizedBox(
                  height: 0.04.sh,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image.asset(
                          "assets/images/temple_amman_mullaivananathar.png",
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.04.sh,
                ),
                Container(
                    child: Text('அருள்மிகு கர்ப்பரட்சாம்பிகை சமேத',
                        style: TextStyle(
                          fontFamily: 'meera',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown.shade800,
                        ))),
                SizedBox(
                  height: 0.015.sh,
                ),
                Container(
                    child: Text('முல்லைவனநாதர் திருக்கோயில்',
                        style: TextStyle(
                          fontFamily: 'meera',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown.shade800,
                        ))),
                SizedBox(
                  height: 0.03.sh,
                ),
                Container(
                    child: Text('திருக்கருகாவூர் – 614302',
                        style: TextStyle(
                          fontFamily: 'meera',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown.shade800,
                        ))),
                SizedBox(
                  height: 0.03.sh,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Garbaratchambigai()),
                    );
                  },
                  child: Text('சுலோகம் தொடங்க'),
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0)),
                      elevation: 5,
                      shadowColor: Colors.brown.shade200,
                      textStyle: TextStyle(
                        fontFamily: 'meera',
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                      )),
                ),
                SizedBox(
                  height: 0.03.sh,
                ),
              ],
            ),
          ),
        ));
  }
}
