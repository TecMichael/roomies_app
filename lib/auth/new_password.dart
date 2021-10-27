import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roomies_app/screens/pages/dashboard.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/mail.svg', height: 250),
                const SizedBox(
                  height: 60,
                ),
                Text(
                  'Password Reset',
                  style: GoogleFonts.poppins(
                    fontSize: 27,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Your password has been reset sucessfully',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 60,
                ),
                Container(
                  width: double.infinity,
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
                    onPressed: () {},
                    child: const Text(
                      'Continue',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    // color: Colors.indigo.shade400,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
