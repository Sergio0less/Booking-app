// import 'dart:convert';

// import 'package:booking_house/src/model/house.dart';
// import 'package:http/http.dart' as http;
// import 'package:http_parser/http_parser.dart';
// // import 'package:mime_type/mime_type.dart';

// class HouseProvider {
//   final String _baseURL = 'https://bookinghouses-default-rtdb.firebaseio.com';

//   Future<bool> crearCasa(HouseModel casa) async {
//     final url = '$_baseURL/Casas.json';

//     final resp = await http.post(url, body: houseModelToJson(casa));
//     final decodedData = json.decode(resp.body);

//     print(decodedData);
//     return true;
//   }

//   Future<bool> modificarCasa(HouseModel casa) async {
//     final url = '$_baseURL/Casas/${casa.id}.json';

//     final resp = await http.put(url, body: houseModelToJson(casa));
//     final decodedData = json.decode(resp.body);

//     print(decodedData);
//     return true;
//   }

//   Future<List<HouseModel>> cargarCasa() async {
//     final url = '$_baseURL/Casas.json';

//     final resp = await http.get(url);
//     final Map<String, dynamic> decodedData = json.decode(resp.body);
//     final List<HouseModel> casas = List();

//     if (decodedData == null) return [];

//     decodedData.forEach((key, value) {
//       // print(key);
//       print(value);
//       final prodTemp = HouseModel.fromJson(value);
//       prodTemp.id = key;
//       casas.add(prodTemp);
//     });

//     // print(casas.first.id);

//     return casas;
//   }

//   Future<int> eliminarCasa(String id) async {
//     final url = '$_baseURL/Casas/$id.json';

//     final resp = await http.delete(url);

//     print(json.decode(resp.body));
//     return -1;
//   }
// }
