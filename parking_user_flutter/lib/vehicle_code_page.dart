import 'package:flutter/material.dart';
import 'package:parking_user_flutter/widgets/drawer_home.dart';

class QRCode extends StatelessWidget {
  static const String routeName = '/QRCodePage'; // routeName to know where home navigation
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text('Mã thẻ xe'),
        ),
      ),
      body: Center(
        child: Text('Hello, this is QR code'),
      ),
    );
  }
}
