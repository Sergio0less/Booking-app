import 'package:booking_house/src/pages/casas_page.dart';
import 'package:booking_house/src/pages/patios_page.dart';
import 'package:booking_house/src/pages/room_page.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Categorias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.symmetric(horizontal: 20),
      // height: 200,
      // width: 370,
      decoration: BoxDecoration(
        color: cBackground,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Casas_page();
                    },
                  ),
                );
              },
              child: Container(
                child: Cat(
                  image: 'assets/images/cat1.jpg',
                  title: 'Casas',
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Patios_page();
                    },
                  ),
                );
              },
              child: Container(
                child: Cat(
                  image: 'assets/images/cat2.jpg',
                  title: 'Patios',
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Room_page();
                    },
                  ),
                );
              },
              child: Container(
                child: Cat(
                  image: 'assets/images/cat3.jpg',
                  title: 'Cuartos',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Cat extends StatelessWidget {
  final String title;
  final String image;
  const Cat({
    Key key,
    this.title,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 8,
            ),
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
