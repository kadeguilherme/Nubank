import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  final Icon icon;
  final String title;
  final bool subtitle;

  const ItemMenu({Key key, this.icon, this.title, this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RaisedButton(
          padding: EdgeInsets.all(0),
          color: Colors.purple[800],
          highlightColor: Colors.transparent,
          disabledElevation: 0,
          highlightElevation: 0,
          elevation: 0,
          onPressed: () {},
          child: ListTile(
            title: Text(
              title,
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            subtitle: subtitle
                ? Text(
                    'Nome de preferencia, telefone, e-mail',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white54),
                  )
                : null,
            leading: icon,
            trailing: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.white70,
              size: 30,
            ),
          ),
        ),
        Divider(
          indent: 10,
          endIndent: 10,
          color: Colors.white54,
          height: 5,
        ),
      ],
    );
  }
}
