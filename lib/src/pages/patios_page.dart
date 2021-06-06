import 'package:booking_house/src/widget/Ofertas_patios.dart';
import 'package:flutter/material.dart';

class Patios_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Patios')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Ofertas_patios(),
          ],
        ),
      ),
    );
  }
}
