import 'package:flutter/material.dart';

double iconSize = 30;

CarList carList = CarList(
  cars: [
    Car(companyName: "Chevrolet", carName: "Corvette", price: 2100, imgList: [
      "assets/corvette_front.png",
      "assets/corvette_back.png",
      "assets/interior1.png",
      "assets/interior2.png",
      "assets/corvette_front2.png",
    ], offerDetails: [
      {Icon(Icons.bluetooth, size: iconSize): "Automatic"},
      {Icon(Icons.airline_seat_individual_suite, size: iconSize): "4 seats"},
      {Icon(Icons.pin_drop, size: iconSize): "6.4L"},
      {Icon(Icons.shutter_speed, size: iconSize): "5HP"},
      {Icon(Icons.invert_colors, size: iconSize): "Variant Colours"},
    ], specifications: [
      {
        Icon(Icons.av_timer, size: iconSize): {"Milegp(upto)": "14.2 kmpl"}
      },
      {
        Icon(Icons.power, size: iconSize): {"Engine(upto)": "3996 cc"}
      },
      {
        Icon(Icons.assignment_late, size: iconSize): {"BHP": "700"}
      },
      {
        Icon(Icons.account_balance_wallet, size: iconSize): {
          "More Specs": "14.2 kmpl"
        }
      },
      {
        Icon(Icons.cached, size: iconSize): {"More Specs": "14.2 kmpl"}
      },
    ], features: [
      {Icon(Icons.bluetooth, size: iconSize): "Bluetooth"},
      {Icon(Icons.usb, size: iconSize): "USB Port"},
      {Icon(Icons.power_settings_new, size: iconSize): "Keyless"},
      {Icon(Icons.android, size: iconSize): "Android Auto"},
      {Icon(Icons.ac_unit, size: iconSize): "AC"},
    ]),
    Car(
      companyName: "Lamborghini",
      carName: "Aventador SVJ",
      price: 3000,
      imgList: [
        "assets/lambo_front.png",
        "assets/interior_lambo.png",
        "assets/lambo_back.png",
      ],
      offerDetails: [
        {Icon(Icons.bluetooth, size: iconSize): "Automatic"},
        {Icon(Icons.bluetooth, size: iconSize): "4 seats"},
        {Icon(Icons.bluetooth, size: iconSize): "6.4L"},
        {Icon(Icons.bluetooth, size: iconSize): "5HP"},
        {Icon(Icons.bluetooth, size: iconSize): "Variant Colours"},
      ],
      specifications: [
        {
          Icon(Icons.bluetooth, size: iconSize): {"Milegp(upto)": "14.2 kmpl"}
        },
        {
          Icon(Icons.bluetooth, size: iconSize): {"Engine(upto)": "3996 cc"}
        },
        {
          Icon(Icons.bluetooth, size: iconSize): {"BHP": "700"}
        },
        {
          Icon(Icons.bluetooth, size: iconSize): {"Milegp(upto)": "14.2 kmpl"}
        },
        {
          Icon(Icons.bluetooth, size: iconSize): {"Milegp(upto)": "14.2 kmpl"}
        },
      ],
      features: [
        {Icon(Icons.bluetooth, size: iconSize): "Bluetooth"},
        {Icon(Icons.bluetooth, size: iconSize): "USB Port"},
        {Icon(Icons.bluetooth, size: iconSize): "Keyless"},
        {Icon(Icons.bluetooth, size: iconSize): "Android Auto"},
        {Icon(Icons.bluetooth, size: iconSize): "AC"},
      ],
    )
  ],
);

class CarList {
  List<Car> cars;

  CarList({required this.cars});
}

class Car {
  String carName;
  String companyName;
  int price;
  List<String> imgList;
  List<Map<Icon, String>> offerDetails;
  List<Map<Icon, String>> features;
  List<Map<Icon, Map<String, String>>> specifications;

  Car({
    required this.carName,
    required this.companyName,
    required this.price,
    required this.imgList,
    required this.offerDetails,
    required this.features,
    required this.specifications,
  });
}

