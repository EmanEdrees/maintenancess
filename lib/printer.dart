import 'package:flutter/material.dart';

class Printer extends StatefulWidget {
  const Printer({Key? key}) : super(key: key);

  @override
  State<Printer> createState() => _PrinterState();
}

class _PrinterState extends State<Printer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( 'صيانة طابعات',style: TextStyle(fontFamily: 'Cairo',fontSize: 15,color: Colors.white ),),

        backgroundColor: Color(0xff022C43),
      ),
    );
  }
}
