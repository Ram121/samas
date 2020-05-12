import 'package:flutter/material.dart';
import 'package:samas/lists/child_list.dart';
import 'package:samas/lists/tatpurush_list.dart';
import 'package:samas/services/sizeConfig.dart';

class SamasDetails extends StatelessWidget {
  static const String id = 'details_page';
  final ChildSamas child;
  const SamasDetails({this.child});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: child.color,
      body: Column(
        children: <Widget>[
          Container(
            height: SizeConfig.screenHeight * 0.3,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                    child.name,
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
                    right: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      child.description,
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        letterSpacing: 2.0,
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: tatpurushChildList.length,
                        itemBuilder: (BuildContext context, int index) {
                          TatpurushSamas samas = tatpurushChildList[index];
                          return Card(
                            color: samas.color,
                            child: ListTile(
                              leading: Text(
                                samas.name,
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
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
