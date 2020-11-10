import 'package:flutter/material.dart';
import 'package:nubank/widget/itemMenu.dart';

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
              Divider(
                indent: 10,
                endIndent: 10,
                color: Colors.white54,
                height: 5,
              ),
              Column(
                children: [
                  ItemMenu(
                    icon: Icon(
                      Icons.info_outline,
                      color: Colors.white70,
                      size: 30,
                    ),
                    title: 'Me ajuda',
                    subtitle: false,
                  ),
                  ItemMenu(
                    icon: Icon(
                      Icons.person_outline_outlined,
                      color: Colors.white70,
                      size: 30,
                    ),
                    title: 'Perfil',
                    subtitle: true,
                  ),
                  ItemMenu(
                    icon: Icon(
                      Icons.settings,
                      color: Colors.white70,
                      size: 30,
                    ),
                    title: 'Configurações do app',
                    subtitle: false,
                  ),
                  ItemMenu(
                    icon: Icon(
                      Icons.credit_card_outlined,
                      color: Colors.white70,
                      size: 30,
                    ),
                    title: 'Configurar NuConta',
                    subtitle: false,
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.white70),
                  ),
                  width: MediaQuery.of(context).size.width * .50,
                  child: FlatButton(
                      onPressed: () {}, child: Text('SAIR DA CONTA')))
            ],
          ),
        ),
      ),
    );
  }
}
