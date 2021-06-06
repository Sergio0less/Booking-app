import 'package:booking_house/src/widget/Ofertas.dart';
import 'package:flutter/material.dart';

class Casas_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Casas')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Ofertas(),
          ],
        ),
      ),
    );
  }
}
