

import 'package:flutter/material.dart';

import 'package:flutter_integration_material_ui/Screen/Integration/BarcodeScanner/Widget/Button_Widget.dart';
import 'package:image_picker/image_picker.dart';

class MoneyScanner extends StatefulWidget {
  @override
  _MoneyScannerState createState() => _MoneyScannerState();
}

class _MoneyScannerState extends State<MoneyScanner> {
  

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor:const Color(0xFF313131),
        appBar: AppBar(
          title: const Text("Money Scanner"),
          backgroundColor: Colors.black12,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            const  Text(
                'Scan Result',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            const  SizedBox(height: 8),
            const  Text(
                'Result',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
             const SizedBox(height: 50),
              ButtonWidget(
                color: Colors.black26,
                text: 'Start Money scan',
                onClicked: () => scanMoney(),
              ),
            ],
          ),
        ),
      );

  Future<void> scanMoney() async {
    final ImagePicker picker = ImagePicker();
    final XFile photo = await picker.pickImage(source: ImageSource.camera);
  }
}
