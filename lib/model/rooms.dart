// import 'package:roomies_app/model/hotel_model.dart';

class Rooms {
  final String image;
  final String name;
  final String sqm;
  final String bed;
  final String guests;
  final String price;
  final List<SubRooms>? subRooms;

  Rooms({
    required this.name,
    required this.image,
    required this.sqm,
    required this.bed,
    required this.guests,
    required this.price,
    required this.subRooms,
  });
}

class SubRooms {
  final String? image;
  final String? name;
  final String? sqm;
  final String? bed;
  final String? guests;
  final String? price;

  SubRooms({
    this.image,
    this.name,
    this.sqm,
    this.bed,
    this.guests,
    this.price,
  });
}

List<Rooms> roomlist = [
  Rooms(
    name: 'Single Room',
    image:
        'https://webbox.imgix.net/images/owvecfmxulwbfvxm/c56a0c0d-8454-431a-9b3e-f420c72e82e3.jpg?auto=format,compress&fit=crop&crop=entropy',
    sqm: '24.8 sqm',
    bed: 'queen bed',
    guests: '1 guest',
    price: '',
    subRooms: [
      SubRooms(
        bed: ' king Bed',
        name: 'Single Room',
        image:
            'https://i.pinimg.com/474x/61/35/5f/61355f8ab8dfbc544061634d1ff00474.jpg',
        price: '#50,000/per Night',
      ),
      SubRooms(
        bed: ' Queen Bed',
        name: 'Single Room',
        image:
            'https://cdn.traveltripper.io/site-assets/512_855_12327/media/2018-02-27-075653/large_ex-queen-king-1.jpg',
        price: '#60,000/per Night',
      ),
      SubRooms(
        bed: ' Cal King Bed',
        name: 'Single Room',
        image:
            'https://cdn.shopify.com/s/files/1/0014/7845/9504/articles/BEDROOM.png',
        price: '#30,000/per Night',
      ),
      SubRooms(
        bed: ' Standard Bed',
        name: 'Single Room',
        image:
            'https://foyr.com/learn/wp-content/uploads/2019/01/master-bedroom.png',
        price: '#80,000/per Night',
      ),
    ],
  ),
  Rooms(
    name: 'Cabana Room',
    image: 'https://www.anaanan.com/images/room-3-bed-cabana/img-01.jpg',
    sqm: '31.8 sqm',
    bed: 'queen bed',
    guests: '3 guests',
    price: '',
    subRooms: [
      SubRooms(
        bed: ' Standard Bed',
        name: 'Cabana Room',
        image:
            'https://media-cdn.tripadvisor.com/media/photo-s/12/d1/11/07/king-bed-room-gulf-view.jpg',
        price: '#100,000/per Night',
      ),
      SubRooms(
        bed: ' Cal King Bed',
        name: 'Cabana Room',
        image:
            'https://media-cdn.tripadvisor.com/media/photo-s/02/37/fc/d1/king-size-ben-in-cabana.jpg',
        price: '#40,000/per Night',
      ),
      SubRooms(
        bed: ' Queen Bed',
        name: 'Cabana Room',
        image:
            'https://www.kayak.com/rimg/himg/b7/4c/06/arbisoftimages-32168-standard-king_10_orig-image.jpg?width=720&height=576&crop=true',
        price: '#66,000/per Night',
      ),
      SubRooms(
        bed: ' king Bed',
        name: 'Cabana Room',
        image:
            'https://i.pinimg.com/474x/61/35/5f/61355f8ab8dfbc544061634d1ff00474.jpg',
        price: '#70,000/per Night',
      ),
    ],
  ),
  Rooms(
    name: 'Exclusive Room',
    image:
        'https://www.architectureartdesigns.com/wp-content/uploads/2019/07/e0b46f97680a9fa9a72028b3844555aa-1280x720.jpg',
    sqm: '34.8 sqm',
    bed: 'queen bed',
    guests: '2 guest',
    price: '',
    subRooms: [
      SubRooms(
        bed: ' king Bed',
        name: 'Exclusive Room',
        image:
            'http://cdn.home-designing.com/wp-content/uploads/2018/10/luxury-master-bedroom-ideas-lighted-accent-wall-neutral-color-bedroom.jpg',
        price: '#90,000/per Night',
      ),
      SubRooms(
        bed: ' Double Bed',
        name: 'Exclusive Room',
        image:
            'https://i.pinimg.com/originals/4b/4a/45/4b4a456f9f773d42669c3b2fb32f5208.jpg',
        price: '#80,000/per Night',
      ),
      SubRooms(
        bed: ' Cal king Bed',
        name: 'Exclusive Room',
        image:
            'https://images.squarespace-cdn.com/content/v1/55bebb51e4b036c52ebe8c45/1516864449197-TF3L5D40VP90KF93YFZZ/classic+ornate+luxurious+bedroom?format=500w',
        price: '#56,000/per Night',
      ),
      SubRooms(
        bed: ' Queen Bed',
        name: 'Exclusive Room',
        image:
            'https://images.yaoota.com/PEOg0cDosqLvWwNyT0vXGVlUq0o=/trim/yaootaweb-production-ng/media/crawledproductimages/c926dcaa9c1a361c2329e556d88b1f624462b443.jpg',
        price: '#39,000/per Night',
      ),
    ],
  ),
  Rooms(
    name: 'Double Room',
    image:
        'https://www.thesleepjudge.com/wp-content/uploads/2018/04/master-bedroom-1.jpg',
    sqm: '44.8 sqm',
    bed: 'queen bed',
    guests: '2 guests',
    price: '',
    subRooms: [
      SubRooms(
        bed: ' King Bed',
        name: 'Double Room',
        image:
            'https://img2.cgtrader.com/items/1983961/b4032d72de/large/modern-luxury-hotel-double-bed-room-design-3d-model-max.jpg',
        price: '#32,000/per Night',
      ),
      SubRooms(
        bed: 'Queen Bed',
        name: 'Double Room',
        image:
            'https://st.hzcdn.com/simgs/pictures/bedrooms/bay-view-grand-condo-in-cancun-jerry-jacobs-design-inc-img~00a1b6550a2ad9a7_4-2596-1-a414664.jpg',
        price: '#62,000/per Night',
      ),
      SubRooms(
        bed: ' Standard Bed',
        name: 'Double Room',
        image:
            'https://webbox.imgix.net/images/lpcsudkgpkcuocql/44216fa5-82f4-4db8-ac17-20dc8389f4d8.jpg?auto=format,compress&fit=crop&crop=entropy',
        price: '#29,000/per Night',
      ),
      SubRooms(
        bed: ' Deluxe Bed',
        name: 'Double Room',
        image:
            'https://d1dzqwexhp5ztx.cloudfront.net/imageRepo/5/0/94/472/31/IL263_Double_Suite_S.jpg',
        price: '#82,000/per Night',
      ),
    ],
  ),
  Rooms(
    name: 'Vip Room',
    image:
        'https://i.pinimg.com/736x/6f/06/61/6f0661a7b432b6fcabd77acf0592282d.jpg',
    sqm: '44.8 sqm',
    bed: 'queen bed',
    guests: '2 guests',
    price: '',
    subRooms: [
      SubRooms(
        bed: ' Deluxe Bed',
        name: 'Vip Room',
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPRXyvObztlUiBvgVbvnvrO7EfguEvw8cjwg&usqp=CAU',
        price: '#112,000/per Night',
      ),
      SubRooms(
        bed: ' King Bed',
        name: 'Vip Room',
        image:
            'https://images.nigeriapropertycentre.com/properties/images/1004255/060ea99c3609a6-brand-new-luxurious-4-bedroom-duplex-with-ps5-vip-bar-terraced-duplexes-short-let-lekki-phase-1-lekki-lagos.jpg',
        price: '#117,000/per Night',
      ),
      SubRooms(
        bed: ' Queen Bed',
        name: 'Vip Room',
        image:
            'https://media-cdn.tripadvisor.com/media/vr-splice-j/07/1a/51/1c.jpg',
        price: '#115,000/per Night',
      ),
      SubRooms(
        bed: ' Double Bed',
        name: 'Vip Room',
        image:
            'https://www.karaibeshotel.com/wp-content/uploads/2016/01/Chambre-VIP-2015-3-1024x768.jpg',
        price: '#75,000/per Night',
      ),
    ],
  ),
  Rooms(
    name: 'Suite Room',
    image:
        'https://cloudstorage.amari.com/property/yangshuo/hotel-photos/stay/three-bedroom-suite/three-bedroom-suite-bedroom-1.jpg',
    sqm: '22.8 sqm',
    bed: 'queen bed',
    guests: '1 guest',
    price: '',
    subRooms: [],
  ),
  Rooms(
    name: 'Luxury Room',
    image:
        'http://cdn.home-designing.com/wp-content/uploads/2018/10/luxury-kids-bedroom-dustry-rose-black-and-white-pink-with-desk.jpg',
    sqm: '42.8 sqm',
    bed: 'queen bed',
    guests: '3 guest',
    price: '',
    subRooms: [],
  ),
];
