import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roomies_app/model/hotel_model.dart';
import 'package:roomies_app/model/popular_offers.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../second_screen.dart';

class MainDashboard extends StatefulWidget {
  const MainDashboard({Key? key}) : super(key: key);

  @override
  _MainDashboardState createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(9),
                          topRight: Radius.circular(9),
                          bottomRight: Radius.circular(9),
                          bottomLeft: Radius.circular(9),
                          ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          blurRadius: 9.5,
                          offset: const Offset(3, 5),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        isDense: true,
                        hintStyle: TextStyle(
                          color: Colors.grey.shade500,
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 25,
                        ),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(9),
                        topRight: Radius.circular(9),
                        bottomRight: Radius.circular(9),
                        bottomLeft: Radius.circular(9)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        blurRadius: 9.5,
                        offset: const Offset(3, 5),
                      ),
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Icon(
                      Icons.notifications_none,
                      size: 30,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 50),
        SizedBox(
          height: 340,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              children: List.generate(
                hotellist.length,
                (index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => SecondScreen(index: index),
                        ),
                      );
                    },
                    child: Container(
                      color: Colors.white,
                      width: 240,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 200,
                            width: 220,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(hotellist[index].image),
                                  fit: BoxFit.cover),
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            hotellist[index].name,
                            style: GoogleFonts.poppins(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '  ${hotellist[index].price}',
                            style: const TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 20),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_pin,
                                color: Colors.grey,
                              ),
                              Expanded(
                                child: Text(
                                  hotellist[index].location,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GradientText(
                '    Popular Offers',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                colors: const [
                  Color(0xff9C5AC3),
                  Color(0xff6B5FBC),
                ],
              ),
              Text(
                'See All',
                style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
              )
            ],
          ),
        ),
        const SizedBox(height: 16),
        ListView.builder(
          itemCount: offers.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SecondScreen(
                      index: index,
                      id: 'popular',
                    ),
                  ),
                );
              },
              child: Container(
                // height: 145,
                width: 388,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.45),
                      blurRadius: 9.5,
                      offset: const Offset(5, 7),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 129,
                      width: 122,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(offers[index].image),
                            fit: BoxFit.cover),
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.45),
                            blurRadius: 9.5,
                            offset: const Offset(5, 7),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  offers[index].name,
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                ),
                                Container(
                                  height: 26.9,
                                  width: 32,
                                  decoration:  BoxDecoration(
                                    color: const Color(0xFFF48A37),
                                    borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: FittedBox(
                                    child: Column(
                                      children: const <Widget>[
                                        Icon(Icons.star,
                                            color: Colors.white, size: 36),
                                        SizedBox(height: 6),
                                        Text(
                                          '4.8',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 37,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_pin,
                                  color: Colors.grey,
                                ),
                                Expanded(
                                  child: Text(
                                    offers[index].location,
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                    maxLines: 2,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Text(
                                  offers[index].price,
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ]),
    );
  }
}
