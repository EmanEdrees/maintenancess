import 'package:flutter/material.dart';

class Supply extends StatefulWidget {
  const Supply({Key? key}) : super(key: key);

  @override
  State<Supply> createState() => _SupplyState();
}

class _SupplyState extends State<Supply> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('طلب تجهيز',style: TextStyle(fontFamily: 'Cairo',fontSize: 15,color: Colors.white ),),
        backgroundColor: Color(0xff022C43),
      ),
    );
  }
}
