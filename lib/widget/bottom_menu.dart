import 'package:flutter/material.dart';
import 'package:nubank/model/list_bottom_mock.dart';

class BottomMenu extends StatelessWidget {
  final int index;

  const BottomMenu({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white12,
      child: Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.only(left: 8.0, right: 8.0),
        width: 105,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListBottomMock.data.values.map((e) => e).toList()[index],
            Text(ListBottomMock.data.keys.map((e) => e).toList()[index]),
          ],
        ),
      ),
    );
  }
}
