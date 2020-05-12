import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:samas/components/home_page_samas_widget.dart';
import 'package:samas/lists/samas_list.dart';
import 'package:samas/services/sizeConfig.dart';

class MyHomePage extends StatefulWidget {
  static const String id = 'home_page';
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: <Widget>[
          Container(
            height: SizeConfig.screenHeight * 0.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Welcome to description of',
                  style: TextStyle(
                      color: Colors.white, fontStyle: FontStyle.italic),
                ),
                Text(
                  'समासाः',
                  style: TextStyle(
                      fontFamily: 'HindiOne',
                      fontSize: 50.0,
                      color: Colors.white,
                      fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
          ClipRRect(
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0)),
            child: Container(
              height: SizeConfig.screenHeight * 0.7,
              width: SizeConfig.screenWidth,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: 32,
                    top: 32,
                    bottom: SizeConfig.screenHeight * 0.1,
                    right: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Types of SAMAS',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        letterSpacing: 2.0,
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.03,
                      width: SizeConfig.screenWidth,
                    ),
                    Container(
                      child: Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: samasList.length,
                          itemBuilder: (BuildContext context, int index) {
                            SamasList samas = samasList[index];
                            return Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 30,
                                ),
                                HomePageSamasWidget(
                                  samas: samas,
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
