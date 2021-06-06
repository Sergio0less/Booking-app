// import 'package:booking_house/providers/house_provider.dart';
import 'package:booking_house/src/widget/Texto_Bienvenida.dart';
import 'package:booking_house/src/widget/categorias.dart';
import 'package:booking_house/src/widget/ofertas.dart';
import 'package:booking_house/src/widget/recomendados.dart';
import 'package:booking_house/src/widget/search_bar.dart';
import 'package:flutter/material.dart';

import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final HouseProvider homeProvider = new HouseProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Rentar Casas')),
      bottomNavigationBar: CustomBottombar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextoBienvenida(),
            Search(),
            SizedBox(height: 15),
            Categorias(),
            SizedBox(height: 25),
            Recomendados(),
            Ofertas(),
          ],
        ),
      ),
    );
  }
}

class CustomBottombar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: double.infinity,
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.symmetric(horizontal: 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: cBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            offset: const Offset(
              0,
              3,
            ),
            color: Colors.black.withAlpha(20),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavItem(
            icon: 'assets/icons/search.svg',
            isActive: true,
          ),
          NavItem(
            icon: 'assets/icons/home_mark.svg',
            isActive: false,
          ),
          NavItem(
            icon: 'assets/icons/chat.svg',
            isActive: false,
          ),
          NavItem(
            icon: 'assets/icons/notification.svg',
            isActive: false,
          )
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    Key key,
    @required this.icon,
    @required this.isActive,
  }) : super(key: key);

  final String icon;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(),
        IconButton(icon: SvgPicture.asset(icon), onPressed: () {}),
        Spacer(),
        Container(
          height: 4,
          width: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isActive ? cPrimaryColor : Colors.transparent,
            boxShadow: [
              BoxShadow(
                  blurRadius: 6,
                  offset: const Offset(0, -2),
                  color: isActive ? cPrimaryColor : Colors.transparent)
            ],
          ),
        ),
      ],
    );
  }
}
