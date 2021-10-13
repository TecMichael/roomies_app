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
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xff9C5AC3),
        title: const Text('Verify Your Email'),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        padding: const EdgeInsets.symmetric(horizontal: 18),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff9C5AC3),
              Color(0xff6B5FBC),
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/forgot.svg', height: 190),
                const SizedBox(height: 70),
                Text(
                  'Please Enter The 4 Digit Code Sent To @Gmail.com',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 65,
                ),
                PinCodeTextField(
                  appContext: context,
                  controller: _otp,
                  showCursor: false,
                  length: 4,
                  animationType: AnimationType.fade,
                  onChanged: (value) => print(value),
                  pastedTextStyle: TextStyle(
                    color: Colors.red.shade600,
                    fontWeight: FontWeight.bold,
                  ),
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.circle,
                    fieldHeight: 60,
                    fieldWidth: 60,
                    inactiveColor: Colors.white,
                    selectedColor: Colors.green,
                    activeFillColor: Colors.white,
                    activeColor: const Color(0xFF04E2CF),
                    selectedFillColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 56,),
                MaterialButton(
                  height: 50,
                  minWidth: 300,
                  color: Colors.white,
                  onPressed:() {
                              } ,
                  child:
                   const Text('Verify'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
