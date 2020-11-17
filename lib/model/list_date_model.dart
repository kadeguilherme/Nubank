import 'package:flutter/material.dart';

class ListDateModel {
  final Icon leading;
  final Icon trailing;
  final String subtitle;

  const ListDateModel({
    @required this.leading,
    this.trailing = const Icon(
      Icons.keyboard_arrow_right,
      color: Colors.white70,
      size: 30,
    ),
    this.subtitle = "",
  });
}
