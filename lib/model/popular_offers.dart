class PopularOffers {
  final String image;
  final String price;
  final String location;
  final String name;

  PopularOffers(
      {required this.image,
      required this.price,
      required this.location,
      required this.name});
}

List<PopularOffers> offers = [
  PopularOffers(
      image:
          'http://cdn.cnn.com/cnnnext/dam/assets/140127103345-peninsula-shanghai-deluxe-mock-up.jpg',
      location: 'Oluyole Local Government, 35 7up Rd, Oluyole 234200, Ibadan',
      price: 'N150,000',
      name: 'Michael Hotel'),
  PopularOffers(
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuINx3Y2_f5Zj-E_Df6mqlypWbG_poxYWqzQ&usqp=CAU',
    location: 'No. 3, Aperin street, Awolowo, Old Bodija, Ibadan, Oyo',
    name: 'Fresh Studio',
    price: 'N120,000',
  ),
  PopularOffers(
    image:
        'https://cdn.hotelplanner.com/Common/Images/_HotelPlanner/Home-Page/fade/sld6.jpg',
    location:
        'Alhaji Salami Street,Beside Be Happy Filling Station,Opposite Wema Bank,New Ife Road,Ibadan',
    name: 'Oluyole Hotel',
    price: 'N90,000',
  ),
];
