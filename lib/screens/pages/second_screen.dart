import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roomies_app/model/hotel_model.dart';
import 'package:roomies_app/model/popular_offers.dart';
import 'package:roomies_app/screens/pages/room_selection.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SecondScreen extends StatefulWidget {
  final int index;
  final String? id;
  const SecondScreen({Key? key, required this.index, this.id})
      : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final List<String> _facilityItems = [
    'Restaurant',
    'Wifi',
    '24/7',
    'Pool',
    'Parking',
    'Spa',
    'Air Condition',
    'Beach'
  ];

  final List<IconData> _facilityIcons = [
    Icons.restaurant,
    Icons.wifi,
    Icons.timelapse_outlined,
    Icons.pool,
    Icons.local_parking_outlined,
    Icons.spa,
    Icons.ac_unit,
    Icons.beach_access
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      // backgroundColor: Colors.transparent,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Container(
            height: 5,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.90),
                  blurRadius: 9.5,
                  offset: const Offset(5, 2),
                ),
              ],
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
                size: 23,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(widget.id == 'popular'
                      ? offers[widget.index].image
                      : hotellist[widget.index].image),
                ),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xff9C5AC3),
                    Color(0xff6B5FBC),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 350,
                    width: size.width,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                        autoPlay: true,
                        height: 350,
                      ),
                      items: widget.id == "popular"
                          ? offers[widget.index].rooms
                          : hotellist[widget.index].rooms,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: size.height - 350,
                    padding: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(22),
                        topRight: Radius.circular(22),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              widget.id == 'popular'
                                  ? offers[widget.index].name
                                  : hotellist[widget.index].name,
                              style: GoogleFonts.poppins(
                                  fontSize: 26, fontWeight: FontWeight.w500),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 9, vertical: 3),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.45),
                                    blurRadius: 9.5,
                                    offset: const Offset(5, 7),
                                  ),
                                ],
                              ),
                              child: Column(
                                children: const [
                                  Text(
                                    '4.5',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(width: 5),
                                  Icon(Icons.star,
                                      color: Colors.amber, size: 20),
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 17),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const Icon(
                              Icons.location_pin,
                              size: 18,
                              color: Colors.grey,
                            ),
                            Expanded(
                              child: Text(widget.id == 'popular'
                                  ? '   ${offers[widget.index].location}'
                                  : '   ${hotellist[widget.index].location}'),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          widget.id == 'popular'
                              ? offers[widget.index].description
                              : hotellist[widget.index].description,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Divider(color: Colors.grey[350], thickness: 1.4),
                        const SizedBox(height: 10),
                        GradientText(
                          'Facilities',
                          style: GoogleFonts.poppins(
                              fontSize: 22, fontWeight: FontWeight.bold),
                          colors: const [Color(0xff9C5AC3), Color(0xff6B5FBC)],
                        ),
                        const SizedBox(height: 13),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          child: Row(
                            children: List.generate(
                              _facilityItems.length,
                              (index) {
                                return Container(
                                  height: 40,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                  margin: const EdgeInsets.only(right: 13),
                                  decoration: BoxDecoration(
                                    color: const Color(0x5D6B5FBC),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 13),
                                    child: Expanded(
                                      child: Row(
                                        children: [
                                          Icon(
                                            _facilityIcons[index],
                                            size: 20,
                                            color: const Color(0xff6B5FBC),
                                          ),
                                          const SizedBox(width: 10),
                                          Text(
                                            _facilityItems[index],
                                            style: GoogleFonts.poppins(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                              color: const Color(0xff6B5FBC),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 25),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xff9C5AC3),
                                    Color(0xff6B5FBC),
                                  ],
                                ),
                              ),
                              child: MaterialButton(
                                height: 55,
                                minWidth: double.infinity,
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) =>
                                              const SelectionScreen()));
                                },
                                child: const Text(
                                  'Select Room',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20)
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
