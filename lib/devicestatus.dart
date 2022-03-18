import 'package:flutter/material.dart';

class Devicestatus extends StatefulWidget {
  const Devicestatus({Key? key}) : super(key: key);

  @override
  State<Devicestatus> createState() => _DevicestatusState();
}

class _DevicestatusState extends State<Devicestatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( 'حالة الاجهزة',style: TextStyle(fontFamily: 'Cairo',fontSize: 15,color: Colors.white ),),

        backgroundColor: Color(0xff022C43),
      ),
    );
  }
}
