import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:samas/lists/samas_list.dart';
import 'package:samas/screens/description_page.dart';
import 'package:samas/services/sizeConfig.dart';

class HomePageSamasWidget extends StatelessWidget {
  final SamasList samas;
  HomePageSamasWidget({this.samas});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => SamasDescription(
              samas: samas,
            ),
          ),
        );
      },
      child: Material(
        color: samas.color,
        elevation: 10,
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
          height: SizeConfig.screenHeight * 0.4,
          width: SizeConfig.screenWidth * 0.5,
          padding: EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: samas.color,
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              Text(
                samas.name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.01,
                width: SizeConfig.screenWidth,
              ),
              Text(
                samas.description,
                style: TextStyle(color: Colors.black54),
              ),
              Container(
                height: 150,
                width: 150,
                child: Hero(
                  tag: samas.heroTag,
                  child: Image.asset('images/book.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
