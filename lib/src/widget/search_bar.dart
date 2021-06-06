import 'package:booking_house/src/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 10,
      ),
      child: TextField(
        decoration: InputDecoration(
          fillColor: cBackground,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(25),
          ),
          hintText: 'Inserta una dirección',
          prefixIcon: Container(
            padding: EdgeInsets.all(14),
            child: SvgPicture.asset('assets/icons/search.svg'),
          ),
        ),
      ),
    );
  }
}
