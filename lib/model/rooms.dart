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
          'https://www.berjayahotel.com/sites/default/files/hotel-room-type/london/c1-classic-single-room.jpg',
      sqm: '24.8 sqm',
      bed: 'queen bed',
      guests: '1 guest',
      price: ''),
  rooms(
      name: 'Cabana Room',
      image:
          'https://loveincorporated.blob.core.windows.net/contentimages/gallery/dbeb3be8-2a3f-48b0-86fb-168010585fe7-Atlantis_Palm_underwatersuite.jpg',
      sqm: '31.8 sqm',
      bed: 'queen bed',
      guests: '3 guests',
      price: ''),
  rooms(
      name: 'Exclusive Room',
      image:
          'http://static.asiawebdirect.com/m/phuket/portals/china-hotels-ws/homepage/beijing/top10-luxury-hotels-beijing/pagePropertiesImage/best-luxury-hotels-beijing.jpg.jpg',
      sqm: '34.8 sqm',
      bed: 'queen bed',
      guests: '2 guest',
      price: ''),
  rooms(
      name: 'Double Room',
      image:
          'http://static.asiawebdirect.com/m/phuket/portals/china-hotels-ws/homepage/beijing/top10-luxury-hotels-beijing/pagePropertiesImage/best-luxury-hotels-beijing.jpg.jpg',
      sqm: '44.8 sqm',
      bed: 'queen bed',
      guests: '2 guests',
      price: ''),
  rooms(
      name: 'Vip Room',
      image:
          'http://static.asiawebdirect.com/m/phuket/portals/china-hotels-ws/homepage/beijing/top10-luxury-hotels-beijing/pagePropertiesImage/best-luxury-hotels-beijing.jpg.jpg',
      sqm: '44.8 sqm',
      bed: 'queen bed',
      guests: '2 guests',
      price: ''),
  rooms(
      name: 'Suite Room',
      image:
          'https://d2ile4x3f22snf.cloudfront.net/wp-content/uploads/sites/177/2017/09/29111602/Premier_Grand_Deluxe.1-1400x700.jpg',
      sqm: '22.8 sqm',
      bed: 'queen bed',
      guests: '1 guest',
      price: ''),
  rooms(
      name: 'Deluxe Room',
      image:
          'https://www.berjayahotel.com/sites/default/files/hotel-room-type/makati/01-deluxe-room.jpg',
      sqm: '42.8 sqm',
      bed: 'queen bed',
      guests: '3 guest',
      price: ''),
  rooms(
      name: 'Double Deluxe Room',
      image:
          'https://lh3.googleusercontent.com/proxy/huDi14_23Blx1oS1HK_5Sasbe_pD3ed55NvSnGpfpk05ojl3p3tEn8iyvow188X9avWvuUbi1vN-VxbM9xj_Pnr2KupEiZp_a_T7ZaQqUF8IUZrhKymHWBEb-LBBfq494gtG',
      sqm: '42.8 sqm',
      bed: 'queen bed',
      guests: '3 guest',
      price: ''),
  rooms(
      name: 'Luxury Room',
      image:
          'https://photos.mandarinoriental.com/is/image/MandarinOriental/bangkok-19-deluxe-premier-king-room-2?wid=4000&fmt=jpeg,rgb&qlt=63,0&op_sharpen=0&resMode=sharp2&op_usm=0,0,0,0&icc=sRGB%20IEC61966-2.1&iccEmbed=1&printRes=72&fit=wrap&qlt=45,0',
      sqm: '42.8 sqm',
      bed: 'queen bed',
      guests: '3 guest',
      price: ''),
];
