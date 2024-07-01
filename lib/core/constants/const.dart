import 'package:flutter/material.dart';

import '../../models/mock_data_model.dart';
import '../utils/strings_manager.dart';

class Const {
  static const List<String> dropDownDeliveryItem = [
    StringsManager.dropDownDeliveryItem,
    StringsManager.dropDownWithinItem
  ];

  static const List<String> dropDownWithinItem = [
    StringsManager.dropDownWithinItem,
  ];

  // Home Mock Data
  static const List<MockData> offers = [
    MockData(
      title: "50%",
      note: "03",
    ),
    MockData(
      title: "30%",
      note: "04",
    ),
    MockData(
      title: "70%",
      note: "13",
    ),
    MockData(
      title: "10%",
      note: "02",
    ),
  ];

  static const List<MockData> recommende = [
    MockData(
      title: "Fresh Lemon",
      subtitle: 'Organic',
      price: '12',
    ),
    MockData(
      title: "Green Tea",
      subtitle: 'Organic',
      price: '06',
    ),
    MockData(
      title: "Fresh Lemon",
      subtitle: 'Organic',
      price: '12',
    ),
    MockData(
      title: "Green Tea",
      subtitle: 'Organic',
      price: '06',
    ),
  ];

  static const List<MockData> banners = [
    MockData(
      title: "346 USD",
      subtitle: "Your total savings",
    ),
    MockData(
      title: "215 HRS",
      subtitle: "Your time saved",
    ),
    MockData(
      title: "346 USD",
      subtitle: "Your total savings",
    ),
    MockData(
      title: "215 HRS",
      subtitle: "Your time saved",
    ),
  ];

  static const List<MockData> deals = [
    MockData(
      title: "Orange Package 1 | 1 bundle",
      price: '325',
    ),
    MockData(
      title: "Green Tea Package 2 | 1 bundle",
      price: '89',
    ),
    MockData(
      title: "Orange Package 1 | 1 bundle",
      price: '325',
    ),
    MockData(
      title: "Green Tea Package 2 | 1 bundle",
      price: '89',
    ),
  ];

  // Category Mock Data
  static const List<MockData> categories = [
    MockData(
      title: "Fishes",
      subtitle: "From Sea",
    ),
    MockData(
      title: "Meats",
      subtitle: "Organic",
    ),
    MockData(
      title: "Vegetables",
      subtitle: "Organic",
    ),
    MockData(
      title: "Fruits",
      subtitle: "Fresh & Organic",
    ),
    MockData(
      title: "Fishes",
      subtitle: "From Sea",
    ),
    MockData(
      title: "Meats",
      subtitle: "Organic",
    ),
    MockData(
      title: "Vegetables",
      subtitle: "Organic",
    ),
    MockData(
      title: "Fruits",
      subtitle: "Fresh & Organic",
    ),
  ];

  static const List<MockData> categoriesItems = [
    MockData(
      title: "Big & Small Fishes",
      subtitle: "Fresh from sea",
      price: "36",
      color: Color(0xffFFDC83),
    ),
    MockData(
      title: "Halal Meats",
      subtitle: "Organics & Fresh",
      price: "90",
      color: Color(0xffFFC3BB),
    ),
    MockData(
      title: "Big & Small Fishes",
      subtitle: "From Sea",
      price: "36",
      color: Color(0xffF0FBC5),
    ),
    MockData(
      title: "Halal Meats",
      subtitle: "Organics & Fresh",
      price: "90",
      color: Color(0xffFFDC83),
    ),
    MockData(
      title: "Halal Meats",
      subtitle: "Organics & Fresh",
      price: "90",
      color: Color(0xffFFC3BB),
    ),
    MockData(
      title: "Big & Small Fishes",
      subtitle: "From Sea",
      price: "36",
      color: Color(0xffF0FBC5),
    ),
  ];

  static const List<String> typesCategories = [
    "Meats & Fishes",
    "Vegetables",
    "Fruits",
    "Fishes",
  ];

  // Products Mock Data
  static const List<String> typesProducts = [
    "Popular",
    "Low Price",
    "Small Fishes",
    "Big",
  ];

  static const List<MockData> products = [
    MockData(
      title: "Clown Tang.H03",
      price: "89",
    ),
    MockData(
      title: "Clown Fish.H03",
      price: "89",
    ),
    MockData(
      title: "Fish.H03",
      price: "352",
    ),
    MockData(
      title: "Clown Tang.H03",
      price: "89",
    ),
    MockData(
      title: "Fish.H03",
      price: "325",
    ),
    MockData(
      title: "Clown Tang.H03",
      price: "89",
    ),
    MockData(
      title: "Clown Fish.H03",
      price: "89",
    ),
    MockData(
      title: "Clown Tang.H03",
      price: "89",
    ),
    MockData(
      title: "Clown Fish.H03",
      price: "89",
    ),
  ];

  // Cart User Mock Data
  static List<MockData> cartItems = [
    const MockData(
      title: "Bananas",
      price: "7.90",
      quantity: 2,
      offer: true,
    ),
    const MockData(
      title: "Package 01",
      price: "9.30",
      quantity: 3,
      offer: false,
    ),
    const MockData(
      title: "Package 02",
      price: "9.30",
      quantity: 3,
      offer: false,
    ),
    const MockData(
      title: "Package 03",
      price: "8.40",
      quantity: 4,
      offer: false,
    ),
    const MockData(
      title: "Bananas",
      price: "3.95",
      quantity: 1,
      offer: false,
    ),
    const MockData(
      title: "Package 01",
      price: "6.20",
      quantity: 2,
      offer: false,
    ),
    const MockData(
      title: "Package 02",
      price: "6.30",
      quantity: 3,
      offer: false,
    ),
  ];

  // Address User Mock Data
  static List<MockData> addrsses = [
    const MockData(
      title: StringsManager.home,
      place: StringsManager.greenWaySunamganj,
    ),
    const MockData(
      title: StringsManager.office,
      place: StringsManager.medicalRoadHalallabSunamganj,
    ),
  ];

  // Orders Status
  static const placingOrder = [StringsManager.current, StringsManager.past];

  // Orders Mock Data
  static List<MockData> orders = const [
    MockData(
      id: "765433",
      title: "Fresh Orange",
      price: "7.90",
      nameRider: "Rakib",
      isSuccessOrder: false,
    ),
    MockData(
      id: "765433",
      title: "Big Fishes",
      price: "120",
      nameRider: "Sakib",
      isSuccessOrder: false,
    ),
    MockData(
      id: "765433",
      title: "Bananas",
      price: "7.90",
      date: "02/10/2021",
      isSuccessOrder: true,
    ),
    MockData(
      id: "765433",
      title: "Orange",
      price: "7.90",
      date: "02/10/2021",
      isSuccessOrder: true,
    ),
    MockData(
      id: "765433",
      title: "Apple",
      price: "7.90",
      date: "02/10/2021",
      isSuccessOrder: true,
    ),
  ];
}
