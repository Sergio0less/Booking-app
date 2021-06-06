// import 'package:booking_house/providers/house_provider.dart';
import 'package:booking_house/src/model/house.dart';
import 'package:booking_house/src/pages/house_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class Recomendados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Recomendados',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 250,
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HousePage(
                          imagenUrl: houses[i].imageUrl,
                          nombre: houses[i].name,
                          direccion: houses[i].address,
                          precio: houses[i].price,
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  width: 340,
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              houses[i].imageUrl,
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      // --------------- PRECIO ---------------
                      Positioned(
                        left: 15,
                        top: 15,
                        child: Container(
                          width: 110,
                          height: 48,
                          padding: EdgeInsets.all(11),
                          decoration: BoxDecoration(
                            color: cBackground,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Text(
                            houses[i].price,
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w900,
                              color: cPrice,
                            ),
                          ),
                        ),
                      ),
                      // --------------- BAR ---------------
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.all(15),
                          color: Colors.black45,
                          child: Row(
                            children: [
                              // --------------- INFO ---------------
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      houses[i].name,
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      houses[i].address,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              // --------------- SAVE ---------------
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white60,
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: Container(
                                  width: 45,
                                  height: 45,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  child: Container(
                                    child: SvgPicture.asset(
                                      'assets/icons/heart_outline.svg',
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
