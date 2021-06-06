import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextoBienvenida extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Encuentra el mejor lugar',
            style: TextStyle(
              //color: m,
              fontSize: 22,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}
