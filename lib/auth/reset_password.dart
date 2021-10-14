import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 130,
                      bottom: 1,
                      left: 25,
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Welcome Back',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 35,
                              letterSpacing: 1.2,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 25),
                          child: Text(
                            'Find your hotel easily and travel anywhere you want with us.',
                            style: GoogleFonts.montserrat(
                              color: Colors.white, fontSize: 18,
                              // fontWeight: FontWeight.w400
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 100),
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
                      children: [],
                    ),
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
