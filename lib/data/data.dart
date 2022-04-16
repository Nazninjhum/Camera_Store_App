import 'dart:ui';
import 'package:flutter/material.dart';
class ReModel{
  final String image;
  final String name;
  final String details;
  final int price;

  ReModel({
    required this.image,
    required this.name,
    required this.details,
    required this.price,
});
}

List<ReModel> reImgList = [
  ReModel(image: "assets/images/camera/ca1.png", name: "Instax",details: "Mini B", price: 1000),
  ReModel(image: "assets/images/camera/ca2.png", name: "Instax",details: "Mini B", price: 2000),
  ReModel(image: "assets/images/camera/ca3.png", name: "Instax",details: "Mini B", price: 500),
  ReModel(image: "assets/images/camera/ca4.png", name: "Instax",details: "Mini B", price: 1000),
];