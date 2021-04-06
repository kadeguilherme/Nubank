import 'package:flutter/material.dart';

class SecondCard extends StatefulWidget {
  @override
  _SecondCardState createState() => _SecondCardState();
}

class _SecondCardState extends State<SecondCard>
    with AutomaticKeepAliveClientMixin {
  bool _showSaldo = false;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Icon(
                                Icons.attach_money,
                                color: Colors.grey,
                                size: 36,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Conta",
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40, left: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Saldo disponivel",
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16,
                                ),
                              ),
                              !_showSaldo
                                  ? Text(
                                      "R\$ 180,50",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 33,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  : Container(
                                      height: 30,
                                      width: 170,
                                      color: Colors.grey[300],
                                    ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 10, right: 25),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _showSaldo = !_showSaldo;
                        });
                      },
                      child: Icon(
                        _showSaldo
                            ? Icons.visibility_off_outlined
                            : Icons.visibility,
                        color: Colors.grey,
                        size: 31,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Icon(
                      Icons.credit_card_outlined,
                      color: Colors.grey,
                      size: 30,
                    ),
                  ),
                  Flexible(
                    child: Text(
                      "Compra mais recente em Super Mercado no valor de R\$ 10,00 quinta",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                    size: 25,
                  ),
                ],
              ),
              color: Colors.grey[200],
            ),
          )
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
