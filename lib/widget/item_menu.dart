import 'package:flutter/material.dart';
import 'package:nubank/model/list_date_mock.dart';

class ItemMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = ListDateMock.data;
    return Expanded(
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        separatorBuilder: (context, index) {
          return Divider(
            indent: 10,
            endIndent: 10,
            color: Colors.white54,
            height: 5,
          );
        },
        padding: EdgeInsets.all(0),
        itemCount: data.keys.length,
        itemBuilder: (_, index) {
          return Column(
            children: [
              ListTile(
                onTap: () {},
                leading: data.values.map((e) => e.leading).toList()[index],
                title: Text(data.keys.map((e) => e).toList()[index]),
                trailing: data.values.map((e) => e.trailing).toList()[index],
              ),
              index == data.keys.length - 1 ? ButtonExit() : Container(),
            ],
          );
        },
      ),
    );
  }
}

class ButtonExit extends StatelessWidget {
  const ButtonExit({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 140),
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.white70),
      ),
      width: MediaQuery.of(context).size.width * .50,
      child: FlatButton(
        onPressed: () {},
        child: Text('SAIR DA CONTA'),
      ),
    );
  }
}
