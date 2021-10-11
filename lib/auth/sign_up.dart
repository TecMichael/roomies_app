import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roomies_app/auth/sign_in.dart';

class SignUpscreen extends StatefulWidget {
  const SignUpscreen({Key? key}) : super(key: key);

  @override
  _SignUpscreenState createState() => _SignUpscreenState();
}

class _SignUpscreenState extends State<SignUpscreen> {
  bool _secure = true;

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
                Padding(
                  padding: const EdgeInsets.only(
                    right: 120,
                    bottom: 25,
                    left: 29,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Create   Account',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 32,
                            letterSpacing: 1.2,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Find your hotel easily and travel anywhere you want with us.',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 14),
                      TextFormField(
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Name',
                          labelText: 'Name',
                          labelStyle: const TextStyle(color: Colors.grey),
                          hintStyle: TextStyle(color: Colors.indigo.shade200),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue)),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.indigo),
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(height: 14),
                      TextFormField(
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Email@gmail.com',
                          labelText: 'Email',
                          labelStyle: const TextStyle(color: Colors.grey),
                          hintStyle: TextStyle(color: Colors.indigo.shade200),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue)),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.indigo)),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(height: 14),
                      TextFormField(
                        style: const TextStyle(color: Colors.black),
                        obscureText: _secure,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _secure = !_secure;
                              });
                            },
                            icon: const Icon(Icons.visibility),
                          ),
                          hintText: 'Password',
                          labelText: 'Password',
                          labelStyle: const TextStyle(color: Colors.grey),
                          hintStyle: TextStyle(color: Colors.indigo.shade200),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.indigo),
                          ),
                        ),
                      ),
                      const SizedBox(height: 13),
                      const SizedBox(height: 30),
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
                        // color: Gradient.linear(from, to, colors),
                        child: MaterialButton(
                          height: 50,
                          minWidth: double.infinity,
                          onPressed: () {},
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          // color: Gradient.linear(from, to, colors),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignPage(),
                            ),
                          );
                        },
                        child: SizedBox(
                          height: 37,
                          child: Text.rich(
                            TextSpan(
                              text: 'Already have an account?  ',
                              style: TextStyle(color: Colors.grey.shade800),
                              children: [
                                TextSpan(
                                  text: 'Log In',
                                  style: TextStyle(color: Colors.blue.shade700),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Expanded(child: Divider(color: Colors.black)),
                          Text(
                            '     OR     ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                          Expanded(
                              child:
                                  Divider(color: Colors.grey, thickness: 1.4)),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 35,
                        width: 228,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue)),
                        child: MaterialButton(
                          height: 50,
                          minWidth: double.infinity,
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/icons/google.svg',
                                  height: 16),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Sign up with Google',
                                style: TextStyle(
                                    color: Colors.grey.shade700,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          // color: Gradient.linear(from, to, colors),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 35,
                        width: 228,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue)),
                        child: MaterialButton(
                          height: 50,
                          minWidth: double.infinity,
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/icons/facebook.svg',
                                  height: 16),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Sign up with Facebook',
                                style: TextStyle(
                                    color: Colors.grey.shade700,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
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
