// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors_in_immutables, annotate_overrides, camel_case_types, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_integration_material_ui/Screen/Integration/BarcodeScanner/Page/Money_Scanner_Screen.dart';


class BarCodeScreen extends StatefulWidget {
  BarCodeScreen({Key key}) : super(key: key);

  _BarCodeScreenState createState() => _BarCodeScreenState();
}

class _BarCodeScreenState extends State<BarCodeScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MoneyScanner(),
      ),
      
    );
  }
}
