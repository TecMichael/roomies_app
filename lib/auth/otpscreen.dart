import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController? _otp;

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
                SvgPicture.asset('assets/icons/forgot.svg', height: 200),
                const SizedBox(height: 30),
                Text(
                  'Enter The Code',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  'Enter  OTP',
                  style: GoogleFonts.poppins(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 35),
                SizedBox(
                  width: size.width - 120,
                  child: PinCodeTextField(
                    appContext: context,
                    controller: _otp,
                    showCursor: false,
                    length: 4,
                    animationType: AnimationType.fade,
                    onChanged: (value) => debugPrint(value),
                    pastedTextStyle: TextStyle(
                      color: Colors.red.shade600,
                      fontWeight: FontWeight.bold,
                    ),
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(8),
                      fieldHeight: 50,
                      fieldWidth: 50,
                      inactiveColor: Colors.grey,
                      selectedColor: Colors.green,
                      activeFillColor: Colors.white,
                      activeColor: const Color(0xFF04E2CF),
                      selectedFillColor: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
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
                    onPressed: () {} ,
                    child: const Text(
                      'Verify',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    // color: Colors.indigo.shade400,
                  ),
                ),
                const SizedBox(height: 36),
                const Text.rich(
                  TextSpan(text: 'Did not receive the OTP?   ', children: [
                    TextSpan(
                      text: 'Try again',
                      style: TextStyle(color: Colors.blue),
                    )
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
