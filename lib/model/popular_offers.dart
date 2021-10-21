import 'package:flutter/material.dart';

class PopularOffers {
  final String image;
  final String price;
  final String location;
  final String name;
  final String ratings;
  final String description;
  final List<Widget> rooms;

  PopularOffers(
      {required this.rooms,
      required this.image,
      required this.price,
      required this.location,
      required this.name,
      required this.ratings,
      required this.description});
}

List<PopularOffers> offers = [
  PopularOffers(
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlAR_AyjMaGE_DMyo655e5XDOygI88l_CXEQ&usqp=CAU',
    location: 'Oluyole Local Government, 35 7up Rd, Oluyole 234200, Ibadan',
    price: 'N150,000',
    name: 'Michael Hotel',
    ratings: '',
    description: '',
    rooms: [
      Image.network(
        'https://wallpaperfx.com/uploads/wallpapers/2013/03/10/12218/preview_5-star-hotel-room.jpeg',
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQN0TXqASLcHuthsCEM8du_6viLRTAE9eP22Q&usqp=CAU',
        fit: BoxFit.cover,
      )
    ],
  ),
  PopularOffers(
    image:
        'https://www.castle-hotels-worldwide.com/Hotels/2578_VAE_Hotel_Sofitel_Dubai_The_Palm_Resort/01.jpg',
    location: 'No. 3, Aperin street, Awolowo, Old Bodija, Ibadan, Oyo',
    name: 'Fresh Studio',
    price: 'N120,000',
    ratings: '',
    description: '',
    rooms: [
      Image.network(
        'https://food.jumia.com.ng/blog/wp-content/uploads/2018/06/federal-palace-hotel-casino.jpeg',
        fit: BoxFit.cover,
      ),
      Image.network(
          'https://media-cdn.tripadvisor.com/media/photo-s/18/5c/89/df/guest-room.jpg')
    ],
  ),
  PopularOffers(
    image:
        'https://i.insider.com/5bf9257c0591f27644212f62?width=1000&format=jpeg&auto=webp',
    location:
        'Alhaji Salami Street,Beside Be Happy Filling Station,Opposite Wema Bank,New Ife Road,Ibadan',
    name: 'Oluyole Hotel',
    price: 'N90,000',
    ratings: '',
    description: '',
    rooms: [
      Image.network(
          'http://i.dailymail.co.uk/i/pix/2013/07/26/article-0-1B01DFCC000005DC-223_964x467.jpg',
          fit: BoxFit.cover),
      Image.network(
        'https://i.ytimg.com/vi/MuRsObImJsA/maxresdefault.jpg',
        fit: BoxFit.cover,
      )
    ],
  ),
];
