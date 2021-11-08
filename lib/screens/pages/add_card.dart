import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class AddCard extends StatefulWidget {
  const AddCard({Key? key}) : super(key: key);
  @override
  _AddCardState createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  // final items = [
  //   '01',
  //   '02',
  //   '03',
  //   '04',
  //   '05',
  //   '06',
  //   '07',
  //   '08',
  //   '09',
  //   '10',
  //   '11',
  //   '12'
  // ];
  // final year = [
  //   '2021',
  //   '2022',
  //   '2023',
  //   '2024',
  //   '2025',
  //   '2026',
  //   '2027',
  //   '2028',
  //   '2029',
  //   '2030',
  //   '2031',
  //   '2032',
  //   '2033',
  //   '2034',
  //   '2035',
  //   '2036',
  //   '2037',
  //   '2038',
  //   '2039',
  //   '2040',
  // ];
  // String? value;
  // String? score;

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey.shade700),
        title: const Text(
          'Add New Card',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
              child: Row(
                children: const [
                  Text(
                    'Payment Information',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 25),
              child: Row(
                children: [
                  GradientText(
                    'Credit Card',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline,
                    ),
                    colors: const [
                      Color(0xff9C5AC3),
                      Color(0xff6B5FBC),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 50),
                      GradientText(
                        'Paypal',
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                        colors: [
                          const Color(0xff9C5AC3).withOpacity(0.5),
                          const Color(0xff6B5FBC).withOpacity(0.5),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 40),
            Row(
              children: const [
                Text(
                  'Card Number',
                  style: TextStyle(color: Colors.grey),
                ),
                TextField(
                  decoration: InputDecoration(
                      // border: OutlinedBorder(),
                      labelText: 'Name'),
                )
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 220, horizontal: 40),
              child: Row(
                children: [
                  Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1),
                        border: Border.all(
                          color: Colors.grey.shade300,
                        ),
                      ),
                      // child: DropdownButton<String>(
                      //   value: value,
                      //   iconSize: 36,
                      //   items: items.map(buildMenuItem).toList(),
                      //   onChanged: (value) => setState(
                      //     () => this.value = value,
                      //   ),
                      // ),
                    ),
                  ),
                  Center(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        width: 50,
                        // padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1),
                          border: Border.all(
                            color: Colors.grey.shade300,
                          ),
                        ),
                        // child: DropdownButton<String>(
                        //   value: value,
                        //   iconSize: 16,
                        //   items: year.map(buildMenuyear).toList(),
                        //   onChanged: (value) => setState(
                        //     () => this.value = value,
                        //   ),
                        // ),
                      ),
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

// DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
//       value: item,
//       child: Text(
//         item,
//         style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//       ),
//     );
// DropdownMenuItem<String> buildMenuyear(String year) => DropdownMenuItem(
//       value: year,
//       child: Text(
//         year,
//         style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//       ),
//     );
