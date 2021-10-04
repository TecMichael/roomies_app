import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class SignPage extends StatefulWidget {
  SignPage({Key? key}) : super(key: key);

  @override
  _SignPageState createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(children: [
        Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/home4.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ]),
    ));
  }
}
