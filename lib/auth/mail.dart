import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MailVerify extends StatefulWidget {
  const MailVerify({Key? key}) : super(key: key);

  @override
  _MailVerifyState createState() => _MailVerifyState();
}

class _MailVerifyState extends State<MailVerify> {
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
                  'Check your mail',
                  style: GoogleFonts.poppins(
                    fontSize: 27,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'we have sent a password recovery\n        instructions to your email.',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
                ),
                const SizedBox(
                  height: 60,
                ),
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}
