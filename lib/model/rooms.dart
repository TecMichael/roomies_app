import 'package:flutter/material.dart';
import 'package:roomies_app/model/hotel_model.dart';

class rooms {
  final String image;
  final String name;
  final String sqm;
  final String bed;
  final String guests;
  final String price;

  rooms(
      {required this.name,
      required this.image,
      required this.sqm,
      required this.bed,
      required this.guests,
      required this.price});
}

List<rooms> roomlist = [
  rooms(
      name: 'Single Room',
      image:
          'https://webbox.imgix.net/images/owvecfmxulwbfvxm/c56a0c0d-8454-431a-9b3e-f420c72e82e3.jpg?auto=format,compress&fit=crop&crop=entropy',
      sqm: '24.8 sqm',
      bed: 'queen bed',
      guests: '1 guest',
      price: ''),
  rooms(
      name: 'Cabana Room',
      image:
          'https://pix10.agoda.net/hotelImages/990/99004/99004_16032411380041038142.jpg?s=1024x768',
      sqm: '31.8 sqm',
      bed: 'queen bed',
      guests: '3 guests',
      price: ''),
  rooms(
      name: 'Exclusive Room',
      image:
          'https://www.architectureartdesigns.com/wp-content/uploads/2019/07/e0b46f97680a9fa9a72028b3844555aa-1280x720.jpg',
      sqm: '34.8 sqm',
      bed: 'queen bed',
      guests: '2 guest',
      price: ''),
  rooms(
      name: 'Double Room',
      image:
          'https://www.thesleepjudge.com/wp-content/uploads/2018/04/master-bedroom-1.jpg',
      sqm: '44.8 sqm',
      bed: 'queen bed',
      guests: '2 guests',
      price: ''),
  rooms(
      name: 'Vip Room',
      image:
          'https://cdn.trendir.com/wp-content/uploads/old/interiors/2016/01/26/bedroom-with-built-in-headboard-uno.jpg',
      sqm: '44.8 sqm',
      bed: 'queen bed',
      guests: '2 guests',
      price: ''),
  rooms(
      name: 'Suite Room',
      image:
          'https://cloudstorage.amari.com/property/yangshuo/hotel-photos/stay/three-bedroom-suite/three-bedroom-suite-bedroom-1.jpg',
      sqm: '22.8 sqm',
      bed: 'queen bed',
      guests: '1 guest',
      price: ''),
  rooms(
      name: 'Deluxe Room',
      image:
          'https://photos.mandarinoriental.com/is/image/MandarinOriental/bangkok-19-deluxe-premier-king-room-2?wid=4000&fmt=jpeg,rgb&qlt=63,0&op_sharpen=0&resMode=sharp2&op_usm=0,0,0,0&icc=sRGB%20IEC61966-2.1&iccEmbed=1&printRes=72&fit=wrap&qlt=45,0',
      sqm: '42.8 sqm',
      bed: 'queen bed',
      guests: '3 guest',
      price: ''),
  rooms(
      name: 'Luxury Room',
      image:
          'http://cdn.home-designing.com/wp-content/uploads/2018/10/luxury-kids-bedroom-dustry-rose-black-and-white-pink-with-desk.jpg',
      sqm: '42.8 sqm',
      bed: 'queen bed',
      guests: '3 guest',
      price: ''),
];
