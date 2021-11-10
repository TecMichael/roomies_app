import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roomies_app/model/rooms.dart';
import 'package:roomies_app/model/selected_rooms.dart';

class SelectedRoom extends StatefulWidget {
  final int index;
  const SelectedRoom({Key? key, required this.index}) : super(key: key);

  @override
  _SelectedRoomState createState() => _SelectedRoomState();
}

class _SelectedRoomState extends State<SelectedRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey.shade700),
        title: Text(
          'Room Type',
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400, color: Colors.grey.shade800),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, top: 20, right: 10),
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: roomlist[widget.index].subRooms!.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 145,
                  width: 388,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.45),
                        blurRadius: 9.5,
                        offset: const Offset(5, 7),
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 122,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(selectList[index].img!),
                              fit: BoxFit.cover),
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.45),
                              blurRadius: 9.5,
                              offset: const Offset(5, 7),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  selectList[index].name!,
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500, fontSize: 18),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 9, vertical: 3),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(14),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.45),
                                        blurRadius: 9.5,
                                        offset: const Offset(5, 7),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: const [
                                      Text(
                                        '4.5',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(width: 5),
                                      Icon(Icons.star,
                                          color: Color(0xFF9C5AC3), size: 20),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    selectList[index].price!,
                                    style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFF9C5AC3),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  selectList[index].bed!,
                                  style: GoogleFonts.poppins(
                                      fontSize: 19, fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
