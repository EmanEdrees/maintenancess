import 'package:flutter/material.dart';
import 'package:maintenances/header_drawer.dart';

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
        centerTitle: true,
        title: Container(
          child: Text('تقنية المعلومات للصيانة والتجهيز',style: TextStyle(fontFamily: 'Cairo',fontSize: 15),),

        ),
        backgroundColor: Color(0xff022C43),
        elevation: 0,

        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context,'/');
          }, icon: Icon(Icons.arrow_forward)),
        ],
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
              ],
            ),
          ),
        ),
      ),
      body:SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none)),
            Container(
              width: 350,
              padding: EdgeInsets.only(right: 5,left: 5,bottom: 5,top: 6),
                child: Text('على قسم هندسة الادارة المحلية استلام التي تم ارسال الطلب بها يوم الخميس المصادف 21-3-2022',textAlign:TextAlign.start,style: TextStyle(fontFamily: 'Cairo',fontSize: 18,),),
            ),
          ],
        ),

      ),
    );
  }
}
