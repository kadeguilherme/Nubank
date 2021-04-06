import 'package:flutter/material.dart';

class FirstCard extends StatelessWidget {
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
                                Icons.credit_card,
                                color: Colors.grey,
                                size: 36,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Cartão de crédito",
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
                                "FATURA ATUAL",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "R\$ 600,50",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text.rich(
                                TextSpan(
                                  text: "Limite disponivel: ",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 18,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "R\$ 900,50",
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 12, bottom: 12, left: 10, right: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        child: Column(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(color: Colors.green),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(color: Colors.blue),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(color: Colors.orange),
                            ),
                          ],
                        ),
                        width: 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
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
                      Icons.shopping_cart,
                      color: Colors.grey,
                      size: 30,
                    ),
                  ),
                  Flexible(
                    child: Text(
                      "Compra mais recente em Super Mercado no valor de R\$ 30,00 sexta",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w700),
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
}
