import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                              bottomLeft: Radius.circular(9)),
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
              height: 360,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: List.generate(12, (index) {
                    return Container(
                      color: Colors.white,
                      width: 240,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 250,
                            width: 220,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(" O’Bounce Hotels",
                              style: GoogleFonts.poppins(
                                  fontSize: 20, fontWeight: FontWeight.w400)),
                          const Text(
                            '  N50,000',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 20),
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.location_pin,
                                color: Colors.grey,
                              ),
                              Expanded(
                                child: Text(
                                  "My Hostal dskjkds dskjdskj dsksdkjksdjksdjk",
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Text(
              '    Popular Offers',
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.w600),
            ),
            Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.amber
              ),
            )
          ],
        ),
      ),
    );
  }
}
