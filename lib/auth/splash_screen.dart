import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roomies_app/auth/sign_in.dart';
import 'package:roomies_app/auth/sign_up.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/home7.jpeg'),
                colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 130,
                    // width: 300,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 250,
                        top: 17,
                      ),
                      child: Text(
                        'Roomies',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 42),
                    child: Text(
                      'Find your\nperfect place\nto  stay',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 45,
                      ),
                      // style: ,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 140),
                    child: Text(
                      'Find your hotel easily and travel\nanywhere you want with us',
                      style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 280,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: SizedBox(
                      width: double.infinity,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                              fontSize: 16, color: Colors.indigo.shade500
                              ),
                        ),
                        color: Colors.white,
                        height: 45,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context, 
                        MaterialPageRoute(
                          builder: (context) => const SignPage()
                       )
                        );
                    },
                    child: const Text.rich(TextSpan(
                      text: 'Already have an account?  ',
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: 'Log In',
                          style: TextStyle(color: Colors.blue,
                          fontWeight: FontWeight.w700),
                          
                        ),
                      ],
                    )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
