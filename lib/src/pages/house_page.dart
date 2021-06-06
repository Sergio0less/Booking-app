import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';

class HousePage extends StatelessWidget {
  final String nombre;
  final String direccion;
  final String precio;
  final String imagenUrl;
  final String contenido;

  const HousePage({
    Key key,
    this.imagenUrl,
    this.contenido,
    this.nombre,
    this.direccion,
    this.precio,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BackButtom(img: imagenUrl),
            SizedBox(height: 5),
            Details(
              nombre: nombre,
              direccion: direccion,
              precio: precio,
            ),
            Specs(),
            SizedBox(height: 30),
            About(),
            SizedBox(height: 30),
            Boton(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class Boton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: FlatButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: cBoton,
        child: Container(
          width: double.infinity,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text(
            'Reservar',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Información',
            style: TextStyle(
              color: cTitleTextColor,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eu scelerisque magna. Integer posuere dolor at metus pharetra, quis tristique quam ornare. In pretium neque orci, sed malesuada tellus placerat ut. Praesent lectus quam, semper cursus nisl eget, sollicitudin scelerisque nibh. Ut lorem mi, interdum vel nibh id, aliquam porta.',
            style: TextStyle(
              color: cTitleTextColor,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class Specs extends StatelessWidget {
  const Specs({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 350,
        decoration: BoxDecoration(
          color: cBackground,
          borderRadius: BorderRadius.circular(25),
        ),
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Especificaciones(
                  contenido: 'Cuartos',
                  imagenUrl: 'assets/icons/bedroom.svg',
                ),
                Especificaciones(
                  contenido: 'Baños',
                  imagenUrl: 'assets/icons/bathroom.svg',
                ),
                Especificaciones(
                  contenido: 'Cocinas',
                  imagenUrl: 'assets/icons/kitchen.svg',
                ),
                Especificaciones(
                  contenido: 'TV',
                  imagenUrl: 'assets/icons/parking.svg',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Especificaciones extends StatelessWidget {
  final String imagenUrl;
  final String contenido;

  const Especificaciones({
    Key key,
    this.imagenUrl,
    this.contenido,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          SvgPicture.asset(imagenUrl),
          SizedBox(height: 14),
          Text(
            contenido,
            style: TextStyle(
              color: cBodyTextColor,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

class Details extends StatelessWidget {
  final String nombre;
  final String direccion;
  final String precio;

  const Details({
    Key key,
    this.nombre,
    this.direccion,
    this.precio,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            nombre,
            style: TextStyle(
              color: cTitleTextColor,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            direccion,
            style: TextStyle(
              color: cTitleTextColor,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 15),
          Text(
            precio,
            style: TextStyle(
              color: cTitleTextColor,
              fontSize: 24,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}

class BackButtom extends StatelessWidget {
  final String img;

  const BackButtom({
    Key key,
    this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Stack(
        children: [
          Image.asset(
            img,
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          // SafeArea(
          //   child: Padding(
          //     padding: const EdgeInsets.symmetric(horizontal: 20),
          //     child: Row(
          //       children: [
          //         SizedBox(
          //           height: 55,
          //         ),
          //         CircleIconButton(
          //           iconUrl: 'assets/icons/arrow.svg',
          //           color: Colors.grey,
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
