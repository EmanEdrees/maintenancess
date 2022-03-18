import 'package:flutter/material.dart';

class Internet extends StatefulWidget {
  const Internet({Key? key}) : super(key: key);

  @override
  State<Internet> createState() => _InternetState();
}

class _InternetState extends State<Internet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('صيانة انترنيت',style: TextStyle(fontFamily: 'Cairo',fontSize: 15,color: Colors.white ),),
        backgroundColor: Color(0xff022C43),
      ),
    );
  }
}
