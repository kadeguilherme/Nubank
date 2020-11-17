import 'package:flutter/material.dart';

import 'package:nubank/widget/item_menu.dart';

class DateFound extends StatelessWidget {
  final double top;
  final bool showMenu;

  const DateFound({Key key, this.top, this.showMenu}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 200),
        opacity: showMenu ? 0 : 1,
        child: Container(
          width: MediaQuery.of(context).size.width * .96,
          height: MediaQuery.of(context).size.height * .7,
          child: Column(
            children: [
              Image.network(
                'https://br.qr-code-generator.com/wp-content/themes/qr/new_structure/markets/core_market/generator/dist/generator/assets/images/websiteQRCode_noFrame.png',
                width: 150,
              ),
              SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  text: 'Banco ',
                  style: TextStyle(fontSize: 15),
                  children: [
                    TextSpan(
                      text: '260 - Nu Pagamentos S.A',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 3),
              RichText(
                text: TextSpan(
                  text: 'Agencia ',
                  style: TextStyle(fontSize: 15),
                  children: [
                    TextSpan(
                      text: '001',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 3),
              RichText(
                text: TextSpan(
                  text: 'Conta ',
                  style: TextStyle(fontSize: 15),
                  children: [
                    TextSpan(
                      text: '900021-2',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ItemMenu(),
            ],
          ),
        ),
      ),
    );
  }
}
