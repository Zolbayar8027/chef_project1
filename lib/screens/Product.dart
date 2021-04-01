import 'package:flutter/material.dart';

class Product {
  final String image, title, description, price;
  final int  size, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Buuz",
      price: "2 hours",
      size: 12,
      description: dummyText,
      image: "assets/buuz.jpg",
      color: Color(0xFFD3A984)),
  Product(
      id: 2,
      title: "Banshtai tsai",
      price: "1.5 hour",
      size: 8,
      description: dummyText,
      image: "assets/banshtaitsai.jpg",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Guriltai shul",
      price: "1 hour",
      size: 10,
      description: dummyText,
      image: "assets/guriltaishul.jpg",
      color: Color(0xFFD3A984)),
  Product(
      id: 4,
      title: "tsuivan",
      price: "1 hour",
      size: 11,
      description: dummyText,
      image: "assets/tsuivan.jpg",
      color: Color(0xFFD3A984)),
  Product(
      id: 5,
      title: "food name",
      price: "hour",
      size: 12,
      description: dummyText,
      image: "assets/",
      color: Color(0xFFD3A984)),
  Product(
    id: 6,
    title: "food name",
    price: "hour",
    size: 12,
    description: dummyText,
    image: "assets/",
    color: Color(0xFFD3A984),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";