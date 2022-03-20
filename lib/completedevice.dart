import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maintenances/header_drawer.dart';

class Completedevice extends StatefulWidget {
  const Completedevice({Key? key}) : super(key: key);

  @override
  State<Completedevice> createState() => _CompletedeviceState();
}

class _CompletedeviceState extends State<Completedevice> {
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
            Navigator.pushNamed(context,'/devicestatus');
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
        child: Stack(
       children: [
         Container(
           height: 200,
           width: double.infinity,
           child: Text(''),
           decoration: BoxDecoration(
               color:Color(0xff022C43)
           ),
         ),
         Container(
           width: 35,
           height: 35,
           margin: EdgeInsets.only(right: 15,top:25),
           child:Text(''),
           decoration:BoxDecoration(
             color:Colors.red,
           ),
         ),
         Container(
           margin: EdgeInsets.only(right: 70,top:25),
           child:Text('الاجهزة التي تم اكمالها',style: TextStyle(fontFamily: 'Cairo',fontSize: 18,color: Colors.white),),
         ),
         SingleChildScrollView(
           child: Column(
             children: [
               Container(
                 margin: EdgeInsets.only(top:80),
                 height: 680,
                 width: double.infinity,
                 decoration: const BoxDecoration(
                     color:Colors.white,
                     borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
                     boxShadow: [
                       BoxShadow(
                           color: Color(0xff022C43),
                           blurRadius: 5.0,
                           offset: Offset(-2.0, -2.0))
                     ]),
                 child: SingleChildScrollView(
         child: Stack(
         children: [
         Container(
           height: 45,
             width: double.infinity,
             margin: EdgeInsets.only(top: 25,right: 3,left: 3),
        child:Text('                         القسم',style: TextStyle(fontFamily: 'Cairo',fontSize: 18,color: Colors.black),textAlign: TextAlign.center,),
           decoration: const BoxDecoration(
               color:Color(0xffF5F5F5),
               borderRadius: BorderRadius.all(Radius.circular(20)),
              ),

      ),
           Container(
             height: 45,
             width: 200,
             margin: EdgeInsets.only(top: 25,),
             child:Text('نوع الجهاز',style: TextStyle(fontFamily: 'Cairo',fontSize: 18,color: Colors.white),textAlign: TextAlign.center,),
             decoration: const BoxDecoration(
               color:Colors.red,
               borderRadius: BorderRadius.all(Radius.circular(20)),
             ),

           ),


      ],
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
