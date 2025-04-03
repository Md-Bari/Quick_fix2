import 'package:flutter/material.dart';

import '../models/models.dart';

final List<Category> availableShoes = [
  Category(
    name: "Maid",
    model: "Mr cleaner",
    price: 1500,
    imgAddress: "assets/images/maid.png",
    modelColor: const Color(0xffDE0106),
  ),
  Category(
    name: "Plumber",
    model: "Mr Plumber Organization",
    price: 500,
    imgAddress: "assets/images/plumber.png",
    modelColor: const Color(0xff3F7943),
  ),
  Category(
    name: "Electrician",
    model: "JK Electronics",
    price: 300,
    imgAddress: "assets/images/electrician.png",
    modelColor: const Color(0xffE66863),
  ),
  Category(
    name: "AC Servicing",
    model: "Gree AC service",
    price: 1000,
    imgAddress: "assets/images/ac_repair.png",
    modelColor: const Color(0xffD7D8DC),
  ),
  Category(
    name: "Security Service",
    model: "DIU security Company",
    price: 800,
    imgAddress: "assets/images/security_service.png",
    modelColor: const Color(0xff37376B),
  ),
  Category(
    name: "Beautician",
    model: "Persona body and hair salon",
    price: 115.00,
    imgAddress: "assets/images/beautician.png",
    modelColor: const Color(0xffE4E3E8),
  ),
  Category(
    name: "Tv Service",
    model: "MK tv service centre",
    price: 150.00,
    imgAddress: "assets/images/tv_repair.png",
    modelColor: const Color(0xffD68043),
  ),
];

List<Category> itemsOnBag = [];

final List<UserStatus> userStatus = [
  UserStatus(
    emoji: '😴',
    txt: "Away",
    selectColor: const Color(0xff121212),
    unSelectColor: const Color(0xffbfbfbf),
  ),
  UserStatus(
    emoji: '💻',
    txt: "At Work",
    selectColor: const Color(0xff05a35c),
    unSelectColor: const Color(0xffCEEBD9),
  ),
  UserStatus(
    emoji: '🎮',
    txt: "Gaming",
    selectColor: const Color(0xffFFD237),
    unSelectColor: const Color(0xffFDDFBB),
  ),
  UserStatus(
    emoji: '🤫',
    txt: "Busy",
    selectColor: const Color(0xffba3a3a),
    unSelectColor: const Color(0xffdb9797),
  ),
];

final List categories = [
  'Premium',
  'Medium',
  'Regular',
];
final List featured = [
  'New',
  'Featured',
  'Upcoming',
];

final List<String> sizes = ['Monthly/', 'weekly', 'Daily', 'Hourly'];
