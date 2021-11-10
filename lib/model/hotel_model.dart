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
        'https://silkroaddreamtours.com/wp-content/uploads/2019/11/HardRockHotelSG-Exterior.jpg',
    location: 'Oluyole Local Government, 35 7up Rd, Oluyole 234200, Ibadan.',
    name: '   Agbaje Hotel',
    price: ' N290,000',
    ratings: '',
    description:
        ' Agbaje Hotel offers ultimate comfort and luxury. This 4-storied hotel is a beautiful combination of traditional grandeur and modern facilities. The 255 exclusive guest rooms are furnished with a range of modern amenities such as television and internet access. International direct-dial phone and safe are also available in any of these rooms. Wake-up call facility is also available in these rooms. ',
    rooms: [
      Image.network(
        'https://www.theedgewater.com/admin/wp-content/uploads/2016/03/Presidential_Suite_Bedroom_NEW.jpg',
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://www.jetsetter.com//uploads/sites/7/2018/04/nvxDy-uv-1380x1035.jpeg',
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://ak-d.tripcdn.com/images/220w180000014n1juD710_D_550_412_R5.jpg',
        fit: BoxFit.cover,
      )
    ],
  ),
  HotelModel(
    image:
        'https://www.listfunda.com/wp-content/uploads/2020/01/List-of-5-Star-Hotels-in-Cyprus-2020.jpg',
    location: '4908 Clarksburg Park Road Toledo,Arizona',
    name: ' Primrose High',
    price: 'N90,000',
    ratings: '',
    description:
        'The Hotel Primrose High is located in beautiful Monteverde, famous for its rare and gorgeous cloud forest and friendly community. The views of the Gulf of Nicoya from the hotel\'s 4,200 foot elevation are spectacular. Experience Hotel Fonda Vela\'s natural approach to life with style! Surrounded by beautiful tropical gardens, our buildings are an attractive part of the lush, tropical mountainside. The rooms are cozy, yet elegant, spacious and comfortable. Each room is designed with the environment in mind. For example, large windows help to bring the outdoors inside.',
    rooms: [
      Image.network(
        'https://www.kevmrc.com/wp-content/uploads/2016/12/iberostar-selection-one-of-the-best-lagos-5-star-hotels.jpg',
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://i.pinimg.com/originals/b1/00/f4/b100f40044969ac0aedd73a6f11e0f50.jpg',
        fit: BoxFit.cover,
      ),
      Image.network(
        'http://static.asiawebdirect.com/m/phuket/portals/china-hotels-ws/homepage/beijing/top10-luxury-hotels-beijing/pagePropertiesImage/best-luxury-hotels-beijing.jpg.jpg',
        fit: BoxFit.cover,
      ),
    ],
  ),
  HotelModel(
    image:
        'https://cdn.dubai-marina.com/media/internal_articles_image/1.1_Address_Dubai_Marina_Building_02pfEXL.jpg',
    location: '3517 Stonepot Road,Piscataway,New Jersey',
    name: ' Beatrix Hotel',
    price: 'N120,000',
    ratings: '',
    description:
        'The  Beatrix hotel has easy access to many of the city’s top attractions, including the Casino, Old Montreal, La Ronde and Montreal’s underground city. Cozy guest rooms with panoramic views allow you to unwind, and an indoor pool and sauna ensure that your stay is filled with ease. Whether you’re on the go, or in town to check out all the charming sights and sounds, Sandman Longueuil is always an impressive treat.',
    rooms: [
      Image.network(
        'https://i1.wp.com/theverybesttop10.com/wp-content/uploads/2018/02/Top-10-5-Star-Hotels-In-Frankfurt-9-600x337-1-2.jpg?resize=600%2C337',
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://i.pinimg.com/736x/46/5a/93/465a934c2f754acef9271f74029013fa--unique-hotels-top-hotels.jpg',
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://cache.marriott.com/marriottassets/marriott/LOSSI/lossi-room-2751-hor-feat.jpg?output-quality=70&interpolation=progressive-bilinear&downsize=1180px:*',
        fit: BoxFit.cover,
      )
    ],
  ),
  HotelModel(
    image:
        'https://www.luxuryhotelawards.com/wp-content/uploads/sites/8/2018/02/PullmanDCC1-e1518525038806.jpg',
    location: '2901 High Meadow Lane,Stroudsburg,Pennsylvania',
    name: '  New Apollo',
    price: 'N420,000',
    ratings: '',
    description:
        'Enjoy the peace and quiet of the rural environment and benefit from the close proximity to New Apollo At our 3-star Superior Mercure Hotel München Airport Aufkirchen you can relax in one of our 72 comfortable and luxurious rooms. All our accommodations have satellite TV, a safe, as well as complimentary tea and coffee facilities.',
    rooms: [
      Image.network(
        'https://images2.minutemediacdn.com/image/upload/c_crop,h_1191,w_2121,x_0,y_223/f_auto,q_auto,w_1100/v1555272928/shape/mentalfloss/50569-istock-486178472.jpg',
        fit: BoxFit.cover,
      ),
      Image.network(
        'http://www.designhome.ae/wp-content/uploads/2015/05/38434499_1202966733179940_1055259355659632640_n.jpg',
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://i.insider.com/5db73ba8045a3121d76be773?width=1000&format=jpeg&auto=webp',
        fit: BoxFit.cover,
      ),
    ],
  ),
  HotelModel(
    image:
        'https://cf.bstatic.com/xdata/images/hotel/270x200/79476196.jpg?k=5ab5587a43b8e3144d896b6ad261bf1c3997b5a32c0273291f7a2579887b3e2b&o=',
    location: '4529 Radio Park Drive,Woodland,GA,Georgia',
    name: 'New Blue Jay Hotel',
    price: 'N200,000',
    ratings: '',
    description:
        'New Blue Jay Hotel is in the center of Athens, 5 minutes walking distance from Larissa railway station and Metaxourghio Metro station. All rooms in the hotel are air-conditioned and have private amenities. The hotel boasts a roof garden from which you can relax and enjoy a splendid view of the city and the Acropolis. The roof garden is open from May to the end of September. Free Wi-Fi is also included.',
    rooms: [
      Image.network(
        'https://www.planndesign.com/sites/default/files/articles/screenshot_21.png',
        fit: BoxFit.cover,
      ),
      Image.network(
        'http://www.themontcalm.com/blog/wp-content/uploads/2017/01/1486660969_tamburlaine.jpg',
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://images.trvl-media.com/hotels/28000000/27350000/27348400/27348387/3c572939_z.jpg',
        fit: BoxFit.cover,
      ),
    ],
  ),
  HotelModel(
    image:
        'https://silkroaddreamtours.com/wp-content/uploads/2019/11/HardRockHotelSG-Exterior.jpg',
    location: '4178 Cambridge Place,Elkridge,Maryland',
    name: 'Pearl Lodge',
    price: 'N360,000',
    ratings: '',
    description:
        'The Pearl Lodge Titania is located in the heart of the Historical and Commercial Center of Athens and has recently been renovated. It\'s surrounded by the most important monuments of the Grecian History, such as the Acropolis, the New Museum of Acropolis, the Parliament, the Archaeological Museum, and the National Library. It\'s located within short distance to theaters, modern commercial shops and city malls, offering its guests a wide variety of sightseeing and entertainment choices. Hotel Titania is a unique Athens Hotel which guarantees its guests an unforgettable stay. ',
    rooms: [
      Image.network(
        'https://thumbor.forbes.com/thumbor/711x389/https://blogs-images.forbes.com/neilpatel/files/2016/12/image00.jpg?width=960',
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://image.shutterstock.com/image-photo/kobuleti-georgia-may-17-hotel-260nw-219412603.jpg',
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://admin.kings-resort.com/wp-content/uploads/2020/02/Exclusive-Suite-detail-champagne-3-1024x768.jpg',
        fit: BoxFit.cover,
      ),
    ],
  ),
  HotelModel(
    image:
        'https://d3mgaxfqdimhxa.cloudfront.net/wp-content/uploads/2021/04/ROVE-AT-THE-PARK-20-1-scaled.jpg',
    location: '4081 Margaret Street,Houston,Texas',
    name: 'The Rove Hotel',
    price: 'N220,000',
    ratings: '',
    description:
        'Enjoy the peace and quiet with a wonderful panoramic view at Rove Hotel . Wake and enjoy the unique view from your room balcony. Each room has a telephone system with direct dial and Internet connection. Our new network allows a faster wireless LAN connection. All rooms are decorated in a rustic style and have radio, TV, private bathroom with shower, and a hair dryer.',
    rooms: [
      Image.network(
        'https://imhotel.com/wp-content/uploads/2020/01/CLASSIC-STUDIO-420x300.jpg',
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://atqnews.com/wp-content/uploads/2021/03/Nigerian-hotel.jpg',
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1QMdyhMjhgwkQSdIyMv8Ep9CHQxGoAu9DMw&usqp=CAU',
        fit: BoxFit.cover,
      ),
    ],
  ),
];
