import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roomies_app/auth/otpscreen.dart';

import 'mail.dart';
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
      body: SingleChildScrollView(
        child: Stack(children: [
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
                    right: 130,
                    bottom: 1,
                    left: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 185, bottom: 10),
                  child: Text(
                    'Reset\nPassword',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 35,
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 60, bottom: 40, left: 13),
                  child: Text(
                      'Enter the email/phone number associated\nwith your account and we’ll send an OTP\nto reset your password.',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 15)),
                ),
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
                    children: <Widget>[
                      const SizedBox(height: 20),
                      TextFormField(
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            hintText: 'Email address/Phone number',
                            labelText: 'Email address/Phone number',
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue)),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.indigo.shade900),
                            ),
                            labelStyle: const TextStyle(color: Colors.grey),
                            hintStyle:
                                TextStyle(color: Colors.indigo.shade200)),
                      ),
                      const SizedBox(
                        height: 29,
                      ),
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
                          height: 50,
                          minWidth: double.infinity,
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => const MailVerify()));
                          },
                          child: const Text(
                            'Send',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          // color: Colors.indigo.shade400,
                        ),
                      ),
                      const SizedBox(
                        height: 300,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
