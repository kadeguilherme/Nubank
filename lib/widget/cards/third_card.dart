import 'package:flutter/material.dart';

class ThirdCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            children: [
              Icon(
                Icons.card_giftcard,
                color: Colors.purple[300],
                size: 50,
              ),
              SizedBox(width: 20),
              Text(
                'Rewards',
                style: TextStyle(
                    color: Colors.purple[300],
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Text(
            'Acumule pontos que nunca expiram e troque por passagens aereas ou serviços que voce realmente usar.',
            style: TextStyle(
                color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w500),
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: Colors.purple),
              borderRadius: BorderRadius.circular(5),
            ),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              color: Colors.transparent,
              elevation: 0,
              onPressed: () {},
              child: Text(
                'CONHECER',
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
