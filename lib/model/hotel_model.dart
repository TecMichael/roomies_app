import 'package:flutter/material.dart';

class HotelModel {
  final String image;
  final String price;
  final String location;
  final String name;
  final String ratings;
  final String description;
  final List<Widget> rooms;

  HotelModel(
      {required this.rooms,
      required this.image,
      required this.price,
      required this.location,
      required this.name,
      required this.ratings,
      required this.description});
}

List<HotelModel> hotellist = [
  HotelModel(
    image:
        'http://cdn.cnn.com/cnnnext/dam/assets/140127103345-peninsula-shanghai-deluxe-mock-up.jpg',
    location: 'Oluyole Local Government, 35 7up Rd, Oluyole 234200, Ibadan',
    name: 'Agbaje Hotel',
    price: 'N90,00',
    ratings: '',
    description:
        ' Agbaje Hotel offers ultimate comfort and luxury. This 4-storied hotel is a beautiful combination of traditional grandeur and modern facilities. The 255 exclusive guest rooms are furnished with a range of modern amenities such as television and internet access. International direct-dial phone and safe are also available in any of these rooms. Wake-up call facility is also available in these rooms. ',
    rooms: [],
  ),
  HotelModel(
    image:
        'https://cdn.hotelplanner.com/Common/Images/_HotelPlanner/Home-Page/fade/sld6.jpg',
    location:
        'Alhaji Salami Street,Beside Be Happy Filling Station,Opposite Wema Bank,New Ife Road,Ibadan',
    name: 'Oluyole Hotel',
    price: 'N90,000',
    ratings: '',
    description: '',
    rooms: [
      Image.network(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuINx3Y2_f5Zj-E_Df6mqlypWbG_poxYWqzQ&usqp=CAU',
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuINx3Y2_f5Zj-E_Df6mqlypWbG_poxYWqzQ&usqp=CAU',
        fit: BoxFit.cover,
      ),
    ],
  ),
  HotelModel(
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuINx3Y2_f5Zj-E_Df6mqlypWbG_poxYWqzQ&usqp=CAU',
    location: 'No. 3, Aperin street, Awolowo, Old Bodija, Ibadan, Oyo',
    name: 'Fresh Studio',
    price: 'N120,000',
    ratings: '',
    description: '',
    rooms: [],
  ),
  HotelModel(
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuINx3Y2_f5Zj-E_Df6mqlypWbG_poxYWqzQ&usqp=CAU',
    location: 'No. 3, Aperin street, Awolowo, Old Bodija, Ibadan, Oyo',
    name: 'Fresh Studio',
    price: 'N120,000',
    ratings: '',
    description: '',
    rooms: [],
  ),
];
