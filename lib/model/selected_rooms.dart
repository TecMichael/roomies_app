import 'package:flutter/material.dart';

class SubRooms {
  final String? name;
  final String? img;
  final String? price;
  final String? bed;

  SubRooms(
   { this.bed, 
    this.name,
    this.img,
    this.price,
  });
}

List<SubRooms> selectList = [
  SubRooms(
    bed: '1 king bed',
    name: 'Single Room',
    img:
        'https://webbox.imgix.net/images/owvecfmxulwbfvxm/c56a0c0d-8454-431a-9b3e-f420c72e82e3.jpg?auto=format,compress&fit=crop&crop=entropy',
    price: '#50,000/per Night',
  ),
   SubRooms(
    bed: '1 Queen bed',
    name: 'Single Room',
    img:
        'https://webbox.imgix.net/images/owvecfmxulwbfvxm/c56a0c0d-8454-431a-9b3e-f420c72e82e3.jpg?auto=format,compress&fit=crop&crop=entropy',
    price: '#60,000/per Night',
  ), SubRooms(
    bed: '1 Cal King bed',
    name: 'Single Room',
    img:
        'https://webbox.imgix.net/images/owvecfmxulwbfvxm/c56a0c0d-8454-431a-9b3e-f420c72e82e3.jpg?auto=format,compress&fit=crop&crop=entropy',
    price: '#60,000/per Night',
  ),
];
