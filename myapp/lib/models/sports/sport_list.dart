import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:myapp/models/sports/sport.dart';

class SportProvider with ChangeNotifier {
  String? _searchString;
  set setSearchString(String data) {
    _searchString = data;
    notifyListeners();
  }

  UnmodifiableListView<Sport> get products => _searchString == null
      ? UnmodifiableListView(_products)
      : UnmodifiableListView(_products.where(
          (element) =>
              element.name!
                  .toLowerCase()
                  .contains(_searchString!.toLowerCase().toString()) ||
              element.price
                  .toString()
                  .contains(_searchString!.toLowerCase().toString()) ||
              element.price
                  .toString()
                  .contains(_searchString!.toLowerCase().toString()),
        ));
  final List<Sport> _products = [
    Sport(
      gametype: "Football",
      productId: "SPF001",
      name: 'Football',
      brandName: 'Unknown',
      price: 850,
      size: 10,
      description: 'Lorem Ipsum',
      image: "images/football1.png",
      color: Color.fromRGBO(0, 139, 139, 1),
    ),
    Sport(
      gametype: "Football",
      productId: "SPF002",
      name: 'Football',
      brandName: 'Unknown',
      price: 850,
      size: 10,
      description: 'Lorem Ipsum',
      image: "images/football2.png",
      color: Color.fromRGBO(0, 139, 139, 1),
    ),
    Sport(
      gametype: "Football",
      productId: "SPF003",
      name: 'Football',
      brandName: 'Unknown',
      price: 850,
      size: 10,
      description: 'Lorem Ipsum',
      image: "images/football3.png",
      color: Color.fromRGBO(0, 139, 139, 1),
    ),
    Sport(
      gametype: "Football",
      productId: "SPF004",
      name: 'Football',
      brandName: 'Unknown',
      price: 850,
      size: 10,
      description: 'Lorem Ipsum',
      image: "images/football4.png",
      color: Color.fromRGBO(0, 139, 139, 1),
    ),
    Sport(
      gametype: "Football",
      productId: "SPF005",
      name: 'Football',
      brandName: 'Unknown',
      price: 850,
      size: 10,
      description: 'Lorem Ipsum',
      image: "images/boot1.png",
      color: Color.fromRGBO(0, 139, 139, 1),
    ),
    Sport(
      gametype: "Football",
      productId: "SPF006",
      name: 'Football',
      brandName: 'Unknown',
      price: 850,
      size: 10,
      description: 'Lorem Ipsum',
      image: "images/boot2.png",
      color: Color.fromRGBO(0, 139, 139, 1),
    ),
    Sport(
      gametype: "Football",
      productId: "SPF007",
      name: 'Football',
      brandName: 'Unknown',
      price: 850,
      size: 10,
      description: 'Lorem Ipsum',
      image: "images/boot3.png",
      color: Color.fromRGBO(0, 139, 139, 1),
    ),
    Sport(
      gametype: "Football",
      productId: "SPF008",
      name: 'Football',
      brandName: 'Unknown',
      price: 850,
      size: 10,
      description: 'Lorem Ipsum',
      image: "images/boot4.png",
      color: Color.fromRGBO(0, 139, 139, 1),
    ),
    Sport(
      gametype: "Cricket",
      productId: "SPC001",
      name: 'Cricket',
      brandName: 'Unknown',
      price: 850,
      size: 10,
      description: 'Lorem Ipsum',
      image: "images/cricket1.png",
      color: Color.fromRGBO(0, 139, 139, 1),
    ),
    Sport(
      gametype: "Cricket",
      productId: "SPC002",
      name: 'Cricket',
      brandName: 'Unknown',
      price: 850,
      size: 10,
      description: 'Lorem Ipsum',
      image: "images/cricket2.png",
      color: Color.fromRGBO(0, 139, 139, 1),
    ),
    Sport(
      gametype: "Cricket",
      productId: "SPC003",
      name: 'Cricket',
      brandName: 'Unknown',
      price: 850,
      size: 10,
      description: 'Lorem Ipsum',
      image: "images/cricket3.png",
      color: Color.fromRGBO(0, 139, 139, 1),
    ),
    Sport(
      gametype: "Cricket",
      productId: "SPC004",
      name: 'Cricket',
      brandName: 'Unknown',
      price: 850,
      size: 10,
      description: 'Lorem Ipsum',
      image: "images/cricket4.png",
      color: Color.fromRGBO(0, 139, 139, 1),
    ),
    Sport(
      gametype: "Cricket",
      productId: "SPC005",
      name: 'Cricket',
      brandName: 'Unknown',
      price: 850,
      size: 10,
      description: 'Lorem Ipsum',
      image: "images/cricket5.png",
      color: Color.fromRGBO(0, 139, 139, 1),
    ),
    Sport(
      gametype: "Cricket",
      productId: "SPC006",
      name: 'Cricket',
      brandName: 'Unknown',
      price: 850,
      size: 10,
      description: 'Lorem Ipsum',
      image: "images/cricket6.png",
      color: Color.fromRGBO(0, 139, 139, 1),
    ),
    Sport(
      gametype: "Cricket",
      productId: "SPC007",
      name: 'Cricket',
      brandName: 'Unknown',
      price: 850,
      size: 10,
      description: 'Lorem Ipsum',
      image: "images/cricket7.png",
      color: Color.fromRGBO(0, 139, 139, 1),
    ),
    Sport(
      gametype: "Cricket",
      productId: "SPC008",
      name: 'Cricket',
      brandName: 'Unknown',
      price: 850,
      size: 10,
      description: 'Lorem Ipsum',
      image: "images/cricket8.png",
      color: Color.fromRGBO(0, 139, 139, 1),
    ),
    Sport(
      gametype: "Cricket",
      productId: "SPC010",
      name: 'Cricket',
      brandName: 'Unknown',
      price: 850,
      size: 10,
      description: 'Lorem Ipsum',
      image: "images/cricket9.png",
      color: Color.fromRGBO(0, 139, 139, 1),
    ),
    Sport(
      gametype: "Cricket",
      productId: "SPC011",
      name: 'Cricket',
      brandName: 'Unknown',
      price: 850,
      size: 10,
      description: 'Lorem Ipsum',
      image: "images/cricket10.png",
      color: Color.fromRGBO(0, 139, 139, 1),
    ),
    Sport(
      gametype: "Badminton",
      productId: "SPB001",
      name: 'Badminton',
      brandName: 'Unknown',
      price: 850,
      size: 10,
      description: 'Lorem Ipsum',
      image: "images/badminton1.png",
      color: Color.fromRGBO(0, 139, 139, 1),
    ),
    Sport(
      gametype: "Badminton",
      productId: "SPB002",
      name: 'Badminton',
      brandName: 'Unknown',
      price: 850,
      size: 10,
      description: 'Lorem Ipsum',
      image: "images/badminton2.png",
      color: Color.fromRGBO(0, 139, 139, 1),
    ),
    Sport(
      gametype: "Badminton",
      productId: "SPB003",
      name: 'Badminton',
      brandName: 'Unknown',
      price: 850,
      size: 10,
      description: 'Lorem Ipsum',
      image: "images/badminton3.png",
      color: Color.fromRGBO(0, 139, 139, 1),
    ),
    Sport(
      gametype: "Badminton",
      productId: "SPB004",
      name: 'Badminton',
      brandName: 'Unknown',
      price: 850,
      size: 10,
      description: 'Lorem Ipsum',
      image: "images/badminton4.png",
      color: Color.fromRGBO(0, 139, 139, 1),
    ),
    Sport(
      gametype: "Badminton",
      productId: "SPB005",
      name: 'Badminton',
      brandName: 'Unknown',
      price: 850,
      size: 10,
      description: 'Lorem Ipsum',
      image: "images/badminton5.png",
      color: Color.fromRGBO(0, 139, 139, 1),
    ),
    Sport(
      gametype: "Badminton",
      productId: "SPB006",
      name: 'Badminton',
      brandName: 'Unknown',
      price: 850,
      size: 10,
      description: 'Lorem Ipsum',
      image: "images/badminton6.png",
      color: Color.fromRGBO(0, 139, 139, 1),
    ),
  ];
}
