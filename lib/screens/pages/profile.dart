import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                const Padding(
                  padding: EdgeInsets.only(right: 80, left: 75, top: 50),
                  child: CircleAvatar(
                    radius: 72,
                    backgroundImage: AssetImage(
                      'assets/profile.jpg',
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Agbaje Michael',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 125, bottom: 12),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.s,
                        children: <Widget>[
                          const Icon(
                            Icons.location_on,
                            color: Colors.white,
                          ),
                          Text(
                            'Oyo State, Nigeria',
                            style: TextStyle(color: Colors.grey.shade300),
                          )
                        ],
                      ),
                    )
                  ],
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
                      const SizedBox(height: 10),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: const <Widget>[
                          Text(
                            'Settings',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                       const SizedBox(
                        height: 15,
                      ),
                      Column(
                        children: <Widget>[
                          const SizedBox(height: 20),
                          Row(
                            children: const [
                              CircleAvatar(
                                backgroundColor: Color(0xff6B5FBC),
                                child: Icon(
                                  Icons.notifications,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 24),
                              Text(
                                'Notification',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              SizedBox(width: 180),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                              )
                            ],
                          ),
                          const SizedBox(height: 27),
                          Row(
                            children: const [
                              CircleAvatar(
                                backgroundColor: Color(0xff6B5FBC),
                                child: Icon(
                                  Icons.lock,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 24),
                              Text(
                                'Change Password',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              SizedBox(width: 120),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                              )
                            ],
                          ),
                          const SizedBox(height: 27),
                          Row(
                            children: const [
                              CircleAvatar(
                                backgroundColor: Color(0xff6B5FBC),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 24),
                              Text(
                                'Add Card',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              // SizedBox(width: 195),
                              // Icon(
                              //   Icons.arrow_forward_ios,
                              //   color: Colors.grey,
                              // ),
                            ],
                          ),
                          const SizedBox(height: 27),
                          Row(
                            children: const [
                              CircleAvatar(
                                backgroundColor: Color(0xff6B5FBC),
                                child: Icon(
                                  Icons.support_agent,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 24),
                              Text(
                                'Support',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              SizedBox(width: 210),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          const SizedBox(height: 27),
                          Row(
                            children: const [
                              CircleAvatar(
                                backgroundColor: Color(0xff6B5FBC),
                                child: Icon(
                                  Icons.vertical_align_bottom_outlined,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 24),
                              Text(
                                'About',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              SizedBox(width: 230),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          const SizedBox(height: 27),
                          Row(
                            children: const [
                              CircleAvatar(
                                backgroundColor: Color(0xff6B5FBC),
                                child: Icon(
                                  Icons.logout,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 24),
                              Text(
                                'Log Out',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              SizedBox(width: 215),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 300,
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
