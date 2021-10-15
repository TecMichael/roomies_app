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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 100,
                      bottom: 1,
                      left: 25,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Create new\npassword',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 35,
                              letterSpacing: 1.2,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 25, top: 10),
                          child: Text(
                            'Your new password must be different\nfrom previously used password',
                            style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 14,
                              // fontWeight: FontWeight.w400
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 80),
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
                              suffixIcon: const Icon(Icons.visibility),
                              hintText: 'Password',
                              labelText: 'Password',
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                              ),
                              border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey),
                              ),
                              labelStyle: const TextStyle(color: Colors.grey),
                              hintStyle:
                                  TextStyle(color: Colors.indigo.shade200)),
                        ),
                        const SizedBox(
                          height: 17,
                        ),
                        TextFormField(
                          style: const TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              hintText: 'Confirm password',
                              labelText: 'Confirm password',
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey),
                              ),
                              labelStyle: const TextStyle(color: Colors.grey),
                              hintStyle:
                                  TextStyle(color: Colors.indigo.shade200)),
                        ),
                        const SizedBox(
                          height: 43,
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
                            height: 55,
                            minWidth: double.infinity,
                            onPressed: () {},
                            child: const Text(
                              'Reset Password',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 200,
                        )
                      ],
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
