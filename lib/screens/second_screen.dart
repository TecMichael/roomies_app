// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
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
              decoration: const BoxDecoration(
                gradient: LinearGradient(
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
                    const Padding(
                      padding: EdgeInsets.only(
                          right: 130, bottom: 1, left: 25, top: 30),
                    ),
                    const SizedBox(height: 40),
                    Container(
                      width: double.infinity,
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
                            ),
                            const SizedBox(height: 40),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Agbaje Hotel',
                                  style: GoogleFonts.poppins(
                                      fontSize: 26,
                                      fontWeight: FontWeight.w500),
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  color: Colors.amber,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 17,
                            ),
                            Row(
                              children: const <Widget>[
                                Icon(
                                  Icons.location_pin,
                                  size: 18,
                                  color: Colors.grey,
                                ),
                                Text('  35, London street, oluugbo ibadan')
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              ' Agbaje Hotel offers ultimate comfort and luxury.\nThis 4-storied hotel is a beautiful combination of traditional grandeur and modern facilities.\nThe 255 exclusive guest rooms are furnished with a range of modern amenities such as television and internet access. International direct-dial phone and safe are also available in any of these rooms. Wake-up call facility is also available in these rooms. ',
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const Divider(color: Colors.grey, thickness: 1.4),
                            const SizedBox(
                              height: 10,
                            ),
                            GradientText(
                              'Facilities',
                              style: GoogleFonts.poppins(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                              colors: const [
                                Color(0xff9C5AC3),
                                Color(0xff6B5FBC)
                              ],
                            ),
                            const SizedBox(
                              height: 13,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              // physics: const BouncingScrollPhysics(),
                              child: Row(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 170,
                                    decoration: BoxDecoration(
                                      color: const Color(0x5D6B5FBC),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 13),
                                      child: Expanded(
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.restaurant,
                                              size: 20,
                                              color: Color(0xff6B5FBC),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'Restaurant',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                  color:
                                                      const Color(0xff6B5FBC)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                      height: 40,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: const Color(0x5D6B5FBC),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 13),
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.wifi,
                                              size: 23,
                                              color: Color(0xff6B5FBC),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'Wifi',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                  color:
                                                      const Color(0xff6B5FBC)),
                                            )
                                          ],
                                        ),
                                      )),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    height: 40,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      color: const Color(0x5D6B5FBC),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 19),
                                      child: Row(
                                        children: const [
                                          Icon(
                                            Icons.timelapse_outlined,
                                            size: 25,
                                            color: Color(0xff6B5FBC),
                                          ),
                                          Text(
                                            '24/7',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Color(0xff6B5FBC)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    height: 40,
                                    width: 110,
                                    decoration: BoxDecoration(
                                      color: const Color(0x5D6B5FBC),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 17),
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.pool,
                                            size: 25,
                                            color: Color(0xff6B5FBC),
                                          ),
                                          Text(
                                            'Pool',
                                            style: GoogleFonts.poppins(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                                color: const Color(0xff6B5FBC)),
                                          ),
                                          const SizedBox(
                                            width: 50,
                                          ),
                                          Container(
                                            height: 40,
                                            width: 220,
                                            decoration: BoxDecoration(
                                              color: const Color(0x5D6B5FBC),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 13),
                                              child: Row(
                                                children: [
                                                  const Icon(
                                                    Icons.local_parking,
                                                    size: 23,
                                                    color: Color(0xff6B5FBC),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    'Parking',
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: const Color(
                                                            0xff6B5FBC)),
                                                  ),
                                                  const SizedBox(
                                                    width: 50,
                                                  ),
                                                  Container(
                                                    height: 40,
                                                    width: 120,
                                                    decoration: BoxDecoration(
                                                      color: const Color(
                                                          0x5D6B5FBC),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 19),
                                                      child: Row(
                                                        children: const [
                                                          Icon(
                                                            Icons
                                                                .timelapse_outlined,
                                                            size: 25,
                                                            color: Color(
                                                                0xff6B5FBC),
                                                          ),
                                                          Text(
                                                            '24/7',
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                color: Color(
                                                                    0xff6B5FBC)),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
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
                                const SizedBox(
                                  height: 50,
                                )
                              ],
                            ),
                          ]),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
