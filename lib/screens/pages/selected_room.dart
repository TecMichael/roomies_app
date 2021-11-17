import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:roomies_app/model/rooms.dart';

class SelectedRoom extends StatefulWidget {
  final int index;
  const SelectedRoom({Key? key, required this.index}) : super(key: key);

  @override
  _SelectedRoomState createState() => _SelectedRoomState();
}

class _SelectedRoomState extends State<SelectedRoom> {
  DateTime selectedDate = DateTime.now();
  String datedd = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey.shade700),
        title: Text(
          'Bed Type',
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
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: roomlist[widget.index].subRooms!.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    context: context,
                    builder: (context) {
                      return const ExtraInformation();
                    },
                  );
                },
                child: Container(
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
                              image: NetworkImage(roomlist[widget.index]
                                  .subRooms![index]
                                  .image!),
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
                                  roomlist[widget.index].subRooms![index].name!,
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
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
                                          color: Colors.amber, size: 20),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 7),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    roomlist[widget.index]
                                        .subRooms![index]
                                        .price!,
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
                                  roomlist[widget.index].subRooms![index].bed!,
                                  style: GoogleFonts.poppins(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class ExtraInformation extends StatefulWidget {
  const ExtraInformation({Key? key}) : super(key: key);

  @override
  _ExtraInformationState createState() => _ExtraInformationState();
}

class _ExtraInformationState extends State<ExtraInformation> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController? _startDate, _endDate;
  DateTime selectedDate = DateTime.now();
  int? selectedIndex;
  String? _selectedValue, dropdownValue = 'Occupants';
  List<String>? itemName;

  @override
  Widget build(BuildContext context) {
    final entryDate = customTextFormField(
      controller: _startDate,
      readOnly: true,
      label: 'Entry date ',
      onTap: () async {
        final DateTime? picked = await showDatePicker(
          context: context,
          initialDate: selectedDate,
          firstDate: DateTime.now(),
          lastDate: DateTime.now().add(const Duration(days: 1500)),
        );
        if (picked != null) {
          setState(() {
            selectedDate = picked;
            _startDate!.text = DateFormat.yMd().format(selectedDate);
          });
        }
      },
    );

    final exitDate = customTextFormField(
      controller: _endDate,
      readOnly: true,
      label: 'Exit date ',
      onTap: () async {
        if (_startDate!.text.isEmpty) {
          debugPrint('Please select start date first');
        } else {
          DateTime selectedDate2 = selectedDate;
          final DateTime? picked2 = await showDatePicker(
            context: context,
            initialDate: selectedDate,
            firstDate: selectedDate2,
            lastDate: DateTime.now().add(const Duration(days: 1000)),
          );
          if (picked2 != null) {
            setState(() {
              selectedDate2 = picked2;
              _endDate!.text = DateFormat.yMd().format(selectedDate2);
            });
          }
        }
      },
    );

    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(40),
        ),
      ),
      height: 350,
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(child: entryDate),
                  const SizedBox(width: 125),
                  Expanded(child: exitDate),
                ],
              ),
              const SizedBox(height: 65),
              SizedBox(
                width: 150,
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(6),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xFF9C5AC3)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: '  Occupants',
                    filled: true,
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF9C5AC3)),
                      // borderSide: BorderSide(width: 0, style: BorderStyle.none),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF9C5AC3)),
                      // borderSide: BorderSide(width: 0, style: BorderStyle.none),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  icon: const Icon(Icons.keyboard_arrow_down,
                      color: Colors.black),
                  isExpanded: false,
                  value: _selectedValue,
                  isDense: true,
                  onChanged: (value) {
                    setState(() {
                      _selectedValue = value as String?;
                      selectedIndex = itemName!.indexOf(value!);
                    });
                  },
                  items: itemName!.map((val) {
                    return DropdownMenuItem<String>(
                      value: val,
                      child: Text(val),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 45),
              Column(
                children: [
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
                      height: 55,
                      minWidth: double.infinity,
                      onPressed: () {},
                      child: const Text(
                        ' Proceed',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  customTextFormField({
    TextEditingController? controller,
    required bool readOnly,
    String? hintText,
    label,
    Function()? onTap,
  }) {
    return TextFormField(
      controller: controller,
      readOnly: readOnly,
      onTap: onTap,
      decoration: InputDecoration(
        labelText: label,
        isDense: true,
        prefixIcon: const Icon(
          Icons.calendar_today,
          color: Color(0xFF9C5AC3),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _startDate = TextEditingController();
    _endDate = TextEditingController();
    itemName = [
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
    ];
  }

  @override
  void dispose() {
    super.dispose();
    _startDate!.dispose();
  }
}
