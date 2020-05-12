import 'package:flutter/material.dart';
import 'package:samas/components/sub_list_widget.dart';
import 'package:samas/lists/samas_list.dart';
import 'package:samas/services/sizeConfig.dart';

class SamasDescription extends StatelessWidget {
  static const String id = 'description_page';
  final SamasList samas;
  const SamasDescription({this.samas});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: samas.color,
      body: Column(
        children: <Widget>[
          Container(
            height: SizeConfig.screenHeight * 0.3,
            child: Stack(
              children: <Widget>[
                Container(
                  child: Hero(
                    tag: samas.heroTag,
                    child: Center(
                      child: Image.asset(
                        'images/book.png',
                      ),
                    ),
                  ),
                ),
                SafeArea(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'The details of',
                          style: TextStyle(
                              color: Colors.white, fontStyle: FontStyle.italic),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          samas.name,
                          style: TextStyle(
                              fontFamily: 'MM_Normal',
                              fontSize: 50.0,
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          ClipRRect(
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
                      samas.description,
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        letterSpacing: 2.0,
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.01,
                    ),
                    Text(
                      samas.details,
                      style: TextStyle(fontSize: 20),
                    ),
                    samas.hasChild ? SubListWidget() : Container(),
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
