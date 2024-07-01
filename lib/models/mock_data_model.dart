import 'package:flutter/material.dart';

class MockData {
  final String title;
  final String? id;
  final String? date;
  final String? subtitle;
  final String? note;
  final String? price;
  final int? quantity;
  final bool? offer;
  final bool? isSuccessOrder;
  final String? nameRider;
  final Color? color;
  final String? place;

  const MockData({
    required this.title,
    this.id,
    this.date,
    this.subtitle,
    this.note,
    this.price,
    this.quantity,
    this.offer,
    this.isSuccessOrder,
    this.nameRider,
    this.color,
    this.place,
  });
}
