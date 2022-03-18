import 'package:flutter/material.dart';

class Nofitication extends StatefulWidget {
  const Nofitication({Key? key}) : super(key: key);

  @override
  State<Nofitication> createState() => _NofiticationState();
}

class _NofiticationState extends State<Nofitication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الاشعارات',style: TextStyle(fontFamily: 'Cairo',fontSize: 15,color: Colors.white ),),

      backgroundColor: Color(0xff022C43),
      ),
    );
  }
}
