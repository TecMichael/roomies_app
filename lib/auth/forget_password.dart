import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        backgroundColor: const Color(0xff9C5AC3),
        title: const Text(
          'Forgot Password',
          
        ),
      ),
      body: Stack(
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
          Positioned(
            height: 600,
            left: 80,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    'Please Enter Your Email Address To\n Receive A Verification Code.',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                    ),
                    ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400),
            child: TextFormField(
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                suffixIcon: const Icon(Icons.visibility),
                hintText: 'Email Address',
                labelText: 'Email Address',
                labelStyle: const TextStyle(color: Colors.white),
                hintStyle: TextStyle(color: Colors.indigo.shade200),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:600, ),
            child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                             color: Colors.white
                            ),
                             child: MaterialButton(
                              height: 50,
                              minWidth: 300,
                              onPressed: () {},
                              child: const Text(
                                'Send',
                                style: TextStyle(
                                fontSize: 15,
                   ),
                    ),
                 // color: Colors.indigo.shade400,
               ),
           ),
          ),
        ],
      ),
    );
  }
}
