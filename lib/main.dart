import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const Homepage());
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyFirstPage(),
    );
  }
}

class MyFirstPage extends StatefulWidget {
  const MyFirstPage({Key? key}) : super(key: key);

  @override
  _MyFirstPageState createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AppBar(),
        backgroudImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 130,
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 170, top: 17,),
                    child: Text(
                      'Roomies',
                      textAlign: TextAlign.center,
                      style:  GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                      ),
                      ),
          
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 1),
                    child: Text('Find your\nperfect place\nto  stay',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 45,
                    ),
                    // style: ,
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 73),
                    child: Text('Find your hotel easily and travel\nanywhere you want with us',
                    style: GoogleFonts.raleway(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                    ),
                  ),
                  // Container(
                  //   height: 200,
                  //   width: 200,
                  //   color: Colors.indigo.shade500,
                  // )
              ],
            ), 
          ),
        ),
      ],
    );
  }

  Widget backgroudImage() {
    return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(
        colors: [Colors.black, Colors.black12],
        begin: Alignment.bottomCenter,
        end: Alignment.center,
      ).createShader(bounds),
      blendMode: BlendMode.darken,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/home3.jpg'),

            /// change this to your  image directory
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
