import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Map<String, dynamic>> transactionsData = [
  //Data of type map
  {
    'color': Colors.yellow[700],
    'icon': const FaIcon(
      FontAwesomeIcons.burger,
      color: Colors.white,
    ),
    'name': 'Food',
    'totalAmount': '-R 45.00',
    'date': 'Today',
  },
  {
    'color': Colors.purple,
    'icon': const FaIcon(
      FontAwesomeIcons.bagShopping,
      color: Colors.white,
    ),
    'name': 'Shopping',
    'totalAmount': '-R 280.00',
    'date': 'Today',
  },
  {
    'color': Colors.red,
    'icon': const FaIcon(
      FontAwesomeIcons.tv,
      color: Colors.white,
    ),
    'name': 'Entertainment',
    'totalAmount': '-R 60.00',
    'date': 'Yesterday',
  },
  {
    'color': Colors.blue,
    'icon': const FaIcon(
      FontAwesomeIcons.plane,
      color: Colors.white,
    ),
    'name': 'Travel',
    'totalAmount': '-R 250.00',
    'date': 'Yesterday',
  }
];
