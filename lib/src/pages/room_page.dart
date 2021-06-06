import 'package:booking_house/src/widget/Ofertas_patios.dart';
import 'package:booking_house/src/widget/Ofertas_rooms.dart';
import 'package:flutter/material.dart';

class Room_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cuartos')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Ofertas_rooms(),
          ],
        ),
      ),
    );
  }
}
