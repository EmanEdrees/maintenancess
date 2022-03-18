import 'package:flutter/material.dart';

class Copymachine extends StatefulWidget {
  const Copymachine({Key? key}) : super(key: key);

  @override
  State<Copymachine> createState() => _CopymachineState();
}

class _CopymachineState extends State<Copymachine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('صيانة اجهزة الاستنساخ',style: TextStyle(fontFamily: 'Cairo',fontSize: 15,color: Colors.white ),),
        backgroundColor: Color(0xff022C43),
      ),
    );
  }
}
