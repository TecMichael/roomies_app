import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roomies_app/model/hotel_model.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SecondScreen extends StatefulWidget {
  final int index;
  const SecondScreen({Key? key, required this.index}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final List<String> _facilityItems = [
    'Restaurant',
    'Wifi',
    '24/7',
    'Pool',
    'Parking'
  ];

  final List<IconData> _facilityIcons = [
    Icons.restaurant,
    Icons.wifi,
    Icons.timelapse_outlined,
    Icons.pool,
    Icons.local_parking_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(hotellist[widget.index].image),
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
                  // const Padding(
                  //   padding: EdgeInsets.only(
                  //       right: 130, bottom: 1, left: 25, top: 30),
                  // ),
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
                      items: hotellist[widget.index].rooms,
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
                              hotellist[widget.index].name,
                              style: GoogleFonts.poppins(
                                  fontSize: 26, fontWeight: FontWeight.w500),
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              color: Colors.amber,
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
                                child: Text(
                                    '  ${hotellist[widget.index].location}'))
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          hotellist[widget.index].description,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const Divider(color: Colors.grey, thickness: 1.4),
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
                            children:
                                List.generate(_facilityItems.length, (index) {
                              return Container(
                                height: 40,
                                // width: 170,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                margin: const EdgeInsets.only(right: 15),
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
                            }),
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
                                onPressed: () {},
                                child: const Text(
                                  'Select Room',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                            ),
                            const SizedBox(height: 30)
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
