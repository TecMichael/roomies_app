import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roomies_app/auth/new_password.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
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
                      const SizedBox(height: 50),
                      TextFormField(
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            hintText: 'Current Password',
                            labelText: 'Current Password',
                            labelStyle: const TextStyle(color: Colors.grey),
                            hintStyle:
                                TextStyle(color: Colors.indigo.shade200)),
                      ),
                      const SizedBox(
                        height: 29,
                      ),
                      TextFormField(
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'New Password',
                          labelText: 'New Password',
                          labelStyle: const TextStyle(color: Colors.grey),
                          hintStyle: TextStyle(color: Colors.indigo.shade200),
                        ),
                      ),
                      const SizedBox(
                        height: 29,
                      ),
                      TextFormField(
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            hintText: 'Confirm New Password',
                            labelText: 'Confirm New Password',
                            labelStyle: const TextStyle(color: Colors.grey),
                            hintStyle:
                                TextStyle(color: Colors.indigo.shade200)),
                      ),
                      const SizedBox(
                        height: 40,
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const NewPassword()));
                          },
                          child: const Text(
                            'Update Password',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          // color: Colors.indigo.shade400,
                        ),
                      ),
                      const SizedBox(
                        height: 190,
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
