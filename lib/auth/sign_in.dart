import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roomies_app/auth/sign_up.dart';

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
                      right: 210,
                      bottom: 70,
                      left: 20,
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Welcome Back',
                          style: GoogleFonts.crimsonText(
                            color: Colors.white,
                            fontSize: 45,
                            letterSpacing: 1.2,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 32),
                          child: Text(
                            'Let\'s get you started',
                            style: GoogleFonts.montserrat(
                                color: Colors.white, fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 100),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          style: const TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              hintText: 'Email address@gmail.com',
                              labelText: 'Email address',
                              labelStyle: const TextStyle(color: Colors.grey),
                              hintStyle:
                                  TextStyle(color: Colors.indigo.shade200),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue)),
                              border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.indigo.shade900))),
                        ),
                        const SizedBox(height: 30),
                        TextFormField(
                          style: const TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            suffixIcon: const Icon(Icons.visibility),
                            hintText: 'Password',
                            labelText: 'Password',
                            labelStyle: const TextStyle(color: Colors.grey),
                            hintStyle: TextStyle(color: Colors.indigo.shade200),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.indigo.shade900),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.indigo),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              'Forgot password?',
                              style: TextStyle(color: Colors.indigo),
                            ),
                          ],
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
                            onPressed: () {},
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 15,
                              ),
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
                                '      OR     ',
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
                        const SizedBox(height: 10),
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
                        const SizedBox(height: 10),
                        Text.rich(
                          TextSpan(
                            text: 'Dont have an Account?  ',
                            children: [
                              TextSpan(
                                text: 'Sign up',
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
