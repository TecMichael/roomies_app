import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roomies_app/screens/pages/home_page.dart';
import 'package:roomies_app/auth/verify_password.dart';
import 'package:roomies_app/auth/sign_up.dart';
import 'package:roomies_app/widget/texform_widget.dart';

class SignPage extends StatefulWidget {
  const SignPage({Key? key}) : super(key: key);

  @override
  _SignPageState createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
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
                        right: 130, bottom: 1, left: 25, top: 30),
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
                  const SizedBox(height: 40),
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
                        const SizedBox(height: 30),
                        const TextformWidget(
                          hintText: 'Email address@gmail.com',
                          labelText: 'Email address',
                        ),
                        const SizedBox(height: 30),
                        const TextformWidget(
                          hintText: 'Password',
                          labelText: 'Password',
                          suffixIcon: Icon(Icons.visibility),
                        ),
                        const SizedBox(height: 12),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const ForgotPassword(),
                              ),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Forgot password?',
                                style:
                                    GoogleFonts.poppins(color: Colors.indigo),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 14),
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
                                      builder: (_) => const HomePage()));
                            },
                            child: const Text(
                              'Login',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                            // color: Colors.indigo.shade400, 
                          ),
                        ),
                        const SizedBox(height: 30),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SignUpscreen()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Expanded(
                                  child: Divider(
                                color: Colors.grey,
                                thickness: 1.4,
                              )),
                              Text(
                                '      Or Log in with   ',
                              ),
                              Expanded(
                                child:
                                    Divider(color: Colors.grey, thickness: 1.4),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 35),
                        Container(
                          height: 35,
                          width: 228,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                          ),
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
                                  ' Google',
                                  style: TextStyle(
                                      color: Colors.grey.shade500,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            // color: Gradient.linear(from, to, colors),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 35,
                          width: 228,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                          ),
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
                                GestureDetector(
                                  child: Text(
                                    ' Facebook',
                                    style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text.rich(
                          TextSpan(
                            text: 'Dont have an Account?  ',
                            children: [
                              TextSpan(
                                text: 'Sign up',
                                style: const TextStyle(color: Colors.indigo),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => const SignUpscreen(),
                                      ),
                                    );
                                  },
                              ),
                            ],
                          ),
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
