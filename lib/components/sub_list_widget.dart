import 'package:flutter/material.dart';
import 'package:samas/lists/child_list.dart';
import 'package:samas/screens/deatils_page.dart';

class SubListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 30.0),
        child: ListView.builder(
          itemCount: tatpurushList.length,
          itemBuilder: (BuildContext context, int index) {
            ChildSamas child = tatpurushList[index];
            return Card(
              color: Color(0xffb388ff).withOpacity(0.6),
              child: ListTile(
                leading: Text(
                  child.name,
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                trailing: child.hasChild
                    ? Icon(Icons.play_arrow)
                    : Icon(
                        Icons.stop,
                        color: Colors.transparent,
                      ),
                onTap: () {
                  if (child.hasChild == true) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SamasDetails(
                          child: child,
                        ),
                      ),
                    );
                  }
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
