import 'package:flutter/material.dart';
import 'package:nubank/model/list_date_model.dart';

class ListDateMock {
  static const data = {
    'Me ajuda': ListDateModel(
      leading: Icon(
        Icons.info_outline,
        color: Colors.white70,
        size: 30,
      ),
    ),
    'Perfil': ListDateModel(
      leading: Icon(
        Icons.person_outline_outlined,
        color: Colors.white70,
        size: 30,
      ),
      subtitle: 'Nome de preferencia, telefone, e-mail',
    ),
    'Configurações do app': ListDateModel(
      leading: Icon(
        Icons.settings,
        color: Colors.white70,
        size: 30,
      ),
    ),
    'Configurar NuConta': ListDateModel(
      leading: Icon(
        Icons.credit_card_outlined,
        color: Colors.white70,
        size: 30,
      ),
    )
  };
}
