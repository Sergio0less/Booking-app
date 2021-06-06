// import 'dart:convert';

// HouseModel houseModelFromJason(String str) =>
//     HouseModel.fromJson(json.decode(str));

// String houseModelToJson(HouseModel data) => json.encode(data.toJson());

// class HouseModel {
//   HouseModel({
//     this.id,
//     this.name = '',
//     this.price = '0.0',
//     this.address = '',
//     this.imageUrl,
//     this.about = '',
//   });

//   String id;
//   String name;
//   String price;
//   String address;
//   String imageUrl;
//   String about;

//   factory HouseModel.fromJson(Map<String, dynamic> json) => HouseModel(
//         id: json["id"],
//         name: json["Nombre"],
//         price: json["Precio"]?.toDouble(),
//         address: json["Dirección"],
//         imageUrl: json["ImagenUrl"],
//         about: json["Acerca de"],
//       );

//   Map<String, dynamic> toJson() => {
//         "Nombre": name,
//         "Precio": price,
//         "Dirección": address,
//         "ImagenUrl": imageUrl,
//         "Acerca de": about,
//       };
// }

//////////////////////////////////////////

class House {
  String name, price, address, imageUrl, about;

  House({
    this.name,
    this.price,
    this.address,
    this.imageUrl,
    this.about,
  });
}

final houses = [
  House(
    name: 'Sunny Court',
    price: '\$ 2,527',
    address: '4852  Worley Avenue',
    imageUrl: 'assets/images/House01.jpg',
    about: '',
  ),
  House(
    name: 'Littleworth Villa',
    price: '\$ 2,783',
    address: '2601  Raccoon Run',
    imageUrl: 'assets/images/House02.jpg',
    about: '',
  ),
  House(
    name: 'Grey Gates',
    price: '\$ 2,716',
    address: '1813  Saint Clair Street',
    imageUrl: 'assets/images/House03.jpg',
    about: '',
  ),
  //
  House(
    name: 'Todd E Gallegos',
    price: '\$ 1,443',
    address: '770  Emily Drive',
    imageUrl: 'assets/images/House04.jpg',
    about: '',
  ),
  House(
    name: 'Thomas G Fuller',
    price: '\$ 2,840',
    address: '4465  East Avenue',
    imageUrl: 'assets/images/House05.jpg',
    about: '',
  ),
  House(
    name: '	Lois D Hinkle',
    price: '\$ 2,559',
    address: '746  Ashmor Drive',
    imageUrl: 'assets/images/House06.jpg',
    about: '',
  ),
  House(
    name: 'Cynthia J Irving',
    price: '\$ 1,013',
    address: '4858  Callison Lane',
    imageUrl: 'assets/images/House07.jpg',
    about: '',
  ),
  House(
    name: 'William G Salerno',
    price: '\$ 2,859',
    address: '506  Fleming Way',
    imageUrl: 'assets/images/House08.jpg',
    about: '',
  ),
  House(
    name: '	David D Roberts',
    price: '\$ 2,804',
    address: '3728  Thrash Trail',
    imageUrl: 'assets/images/House09.jpg',
    about: '',
  ),
  House(
    name: '	Donald D Flynn',
    price: '\$ 2,463',
    address: '3319  Simons Hollow Road',
    imageUrl: 'assets/images/House10.jpg',
    about: '',
  ),
  House(
    name: 'William S Gingrich',
    price: '\$ 1,798',
    address: '4624  Aspen Court',
    imageUrl: 'assets/images/House11.jpg',
    about: '',
  ),
];
