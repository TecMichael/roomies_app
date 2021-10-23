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
    price: 'N250,000',
    name: 'Michael.A Hotel',
    ratings: '',
    description:
        'Michael.A Hotel Titania is located in the heart of the Historical and Commercial Center of Athens and has recently been renovated. It\'s surrounded by the most important monuments of the Grecian History, such as the Acropolis, the New Museum of Acropolis, the Parliament, the Archaeological Museum, and the National Library. It\'s located within short distance to theaters, modern commercial shops and city malls, offering its guests a wide variety of sightseeing and entertainment choices. Hotel Titania is a unique Athens Hotel which guarantees its guests an unforgettable stay. ',
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
    location: '3554 Formula Lane,Texas Dallas',
    name: 'Fresh Studio',
    price: 'N120,000',
    ratings: '',
    description:
        'The Fresh Studio Rome offers 80 elegant and plush rooms decorated and furnished in a classical style with warm colors, quality furnishings and rich fabrics. Situated close to Cornelia Metro Station overlooking the Vatican and a pine forest, the Pinewood Hotel Rome also offers free parking, a gorgeous outdoor sun terrace, a hotel lounge room serving an extensive complimentary breakfast to all of our guests.',
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
    location: '2320 Don Jackson Lane,Papaikou',
    name: 'Oluyole Hotel',
    price: 'N90,000',
    ratings: '',
    description:
        'We at Oluyole Hotel strive to create a pleasant and welcoming atmosphere. It’s our goal to make our clients feel at ease, greeting them with professionalism and attention for their every need. All our accommodations have satellite television, bathroom with shower, room safe, heating and air conditioning. All the rooms are equipped with balcony, some with a sea view.  We also have a restaurant on the ground floor to satisfy our guests with authentic regional cooking.  We are ready to give you an unforgettable holiday!',
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
  PopularOffers(
    image:
        'https://media-cdn.tripadvisor.com/media/photo-m/1280/1d/92/10/8b/sheraton-universal-hotel.jpg',
    location: '1871 Havanna Street,Greensboro North Carolina',
    name: ' Sheraton Universal,',
    price: 'N490,000',
    ratings: '',
    description:
        'This hotel sits in central Nice, just 1,150 feet from the ferry port and a 20-minute walk from the Promenade des Anglais. Its rooms are air-conditioned with free Wi-Fi access. The guest rooms at the Kyriad Nice Port are equipped with flat-screen TVs with satellite channels and a private bathroom. Each is serviced by a lift. The Kyriad Hotel Nice Port has a 24-hour reception, which is hosted by a multilingual team. The hotel serves a buffet breakfast every morning. ',
    rooms: [
      Image.network(
          'https://media.cntraveler.com/photos/53da5aa96dec627b149e509d/master/w_1024,h_768,c_limit/royal-ethiad-suite-jumeirah-abu-dhabi-2.jpg',
          fit: BoxFit.cover),
      Image.network(
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/45/16/dd/the-mood-luxury-rooms.jpg?w=900&h=-1&s=1',
        fit: BoxFit.cover,
      )
    ],
  ),
  PopularOffers(
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSxsvtY9F5yhNy3Ypawu0OUueWBTA4n4AkwA&usqp=CAU',
    location: '436 Diamond Street,Asheville North Carolina',
    name: ' Imperial Hotel',
    price: 'N490,000',
    ratings: '',
    description:
        'Imperial Hotel  located in the area of ​​influence known as the Triangle of Art and next to the Madrid Puerta de Atocha AVE station. The hotel consists of 245 rooms specially designed and equipped with all the comforts for you to enjoy a relaxing stay in a warm and pleasant atmosphere. We take care of the details so that you feel at home. The hotel also has a gym with free access for guests. All facilities have been renovated in 2018.',
    rooms: [
      Image.network(
          'https://hotelxtoronto.com/_novaimg/4763216-1452399_0_72_4793_2615_2200_1200.rc.jpg',
          fit: BoxFit.cover),
      Image.network(
        'https://hotelxtoronto.com/_novaimg/galleria/1346121.jpg',
        fit: BoxFit.cover,
      )
    ],
  ),
  PopularOffers(
    image:
        'https://triplanco.com/wp-content/uploads/2019/01/hotel_triplanco.jpg',
    location: '3575 Saint Clair Street,Mississippi',
    name: ' Sequoia Hotel',
    price: 'N490,000',
    ratings: '',
    description:
        'Enjoy the peace and quiet with a wonderful panoramic view at Hotel und Naturhaus Bellevue Seelisbug. Wake and enjoy the unique view from your room balcony. Each room has a telephone system with direct dial and Internet connection. Our new network allows a faster wireless LAN connection. All rooms are decorated in a rustic style and have radio, TV, private bathroom with shower, and a hair dryer.',
    rooms: [
      Image.network(
          'http://1.bp.blogspot.com/-HjDx5aa0ksQ/UWbrbjEWBUI/AAAAAAAAOOE/4SPqEVJMkEk/s1600/fantastic+hotel+room.jpg',
          fit: BoxFit.cover),
      Image.network(
        'https://q-xx.bstatic.com/xdata/images/hotel/840x460/106143936.jpg?k=865a44e1c246abe659f62392c69160baa91529b2845b8a84e3203195e16d7ef1&o=',
        fit: BoxFit.cover,
      )
    ],
  ),
  PopularOffers(
    image: 'https://media.hotelscombined.com/HI338080833.jpg',
    location: '3575 Saint Clair Street,Mississippi',
    name: ' Olive Garden',
    price: 'N340,000',
    ratings: '',
    description:
        'Olive Garden offers ultimate comfort and luxury. This 4-storied hotel is a beautiful combination of traditional grandeur and modern facilities. The 255 exclusive guest rooms are furnished with a range of modern amenities such as television and internet access. International direct-dial phone and safe are also available in any of these rooms. Wake-up call facility is also available in these rooms. ',
    rooms: [
      Image.network(
          'https://i.pinimg.com/originals/8d/40/36/8d40364f927607d64ed53906e9ec7f88.jpg',
          fit: BoxFit.cover),
      Image.network(
        'https://i.pinimg.com/originals/85/e7/43/85e743e777f602c0855f8f564d1a47a5.jpg',
        fit: BoxFit.cover,
      )
    ],
  ),
];
