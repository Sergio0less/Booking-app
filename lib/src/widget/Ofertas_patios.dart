import 'package:booking_house/src/model/patios.dart';
import 'package:booking_house/src/pages/house_page.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'circle_icon_buttom.dart';

class Ofertas_patios extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // --------------- OPCIONES ---------------
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Mejores ofertas',
                style: TextStyle(
                  color: cTitleTextColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          // --------------- OFERTAS ---------------
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: patios.length,
                  itemBuilder: (context, i) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return HousePage(
                              imagenUrl: patios[i].imageUrl,
                              nombre: patios[i].name,
                              direccion: patios[i].address,
                              precio: patios[i].price,
                            );
                          },
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              // --------------- CASAS ---------------
                              Container(
                                width: 150,
                                height: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(patios[i].imageUrl),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              // --------------- INFO CASAS ---------------
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      patios[i].name,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      patios[i].address,
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          // --------------- SALVAR ---------------
                          Positioned(
                            right: 0,
                            child: CircleIconButton(
                              iconUrl: 'assets/icons/heart.svg',
                              color: Color(0xFFCECED8),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
