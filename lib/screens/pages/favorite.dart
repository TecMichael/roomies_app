import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:roomies_app/model/popular_offers.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  _FavouritePageState createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Favourites',
          style: TextStyle(
              fontWeight: FontWeight.w400, color: Colors.grey.shade900),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 29,
            ),
            Container(
              // height: 170,
              width: 420,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    blurRadius: 9.5,
                    offset: const Offset(5, 5),
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
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://cdn.dubai-marina.com/media/internal_articles_image/1.1_Address_Dubai_Marina_Building_02pfEXL.jpg',
                        ),
                        fit: BoxFit.cover
                      ),
                      // color: Colors.amber,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          blurRadius: 9.5,
                          offset: const Offset(5, 5),
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
                                'Michael Hotel',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500, fontSize: 20),
                              ),
                              Container(
                                height: 26.9,
                                width: 32,
                                decoration: const BoxDecoration(
                                  color: Color(0xffFFCA28),
                                ),
                                child: FittedBox(
                                  child: Row(
                                    children: const [
                                      Text(
                                        '5',
                                        style: TextStyle(fontSize: 19),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
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
                                  '4908 Clarksburg Park Road Toledo,Arizona',
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
                                'N50,000',
                                style: GoogleFonts.poppins(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
