import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roomies_app/auth/sign_in.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              image: DecorationImage(
                image: AssetImage('assets/home4.jpg'),
                fit: BoxFit.cover,
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
                    bottom: 160,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Welcome',
                        style: GoogleFonts.crimsonText(
                          color: Colors.white,
                          fontSize: 45,
                          letterSpacing: 1.4,
                        ),
                      ),
                      Text(
                        'Sign up to get started',
                        style: GoogleFonts.nunito(
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
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'First name',
                          labelText: 'First name',
                          labelStyle: const TextStyle(color: Colors.grey),
                          hintStyle: TextStyle(color: Colors.indigo.shade200),
                          focusedBorder: const OutlineInputBorder(
                             borderSide: BorderSide(
                               color: Colors.blue
                             )
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.indigo
                            ),
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
                          hintText: 'Last name',
                          labelText: 'Last name',
                          labelStyle: const TextStyle(color: Colors.grey),
                          hintStyle: TextStyle(color: Colors.indigo.shade200),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.indigo
                            )
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.indigo)
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
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
                            borderSide: BorderSide(color: Colors.blue)
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.indigo)
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(height: 14),
                      TextFormField(
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          suffixIcon: const Icon(Icons.visibility),
                          hintText: 'Password',
                          labelText: 'Password',
                          labelStyle: const TextStyle(color: Colors.grey),
                          hintStyle: TextStyle(color: Colors.indigo.shade200),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue)
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.indigo)
                          )
                        ),
                      ),
                      const SizedBox(height: 13),
                      TextFormField(
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Phone Number',
                          labelText: 'Phone Number',
                          labelStyle: const TextStyle(color: Colors.grey),
                          hintStyle: TextStyle(color: Colors.indigo.shade200),
                          focusedBorder:  OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(10),
                          ),
                           enabledBorder: OutlineInputBorder(
                              borderSide:
                                   const BorderSide(color: Colors.indigo),
                              borderRadius: BorderRadius.circular(10),
                            ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      MaterialButton(
                        height: 50,
                        minWidth: double.infinity,
                        onPressed: () {},
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        color: Colors.indigo.shade400,
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
