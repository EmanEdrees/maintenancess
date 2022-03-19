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
      body: SafeArea(
        child: Stack(
          children:
          [
            Container(
              height: 150,
              width: double.infinity,
              child: Text(''),
              decoration: BoxDecoration(
                  color:Color(0xff022C43)
              ),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      //bigbox
                      Container(
                        margin: EdgeInsets.only(top:70),
                        height: double.infinity,
                        width: double.infinity,
                        child: SingleChildScrollView(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 35,
                                height: 35,
                                margin: EdgeInsets.only(right: 20),
                                child:Text(''),
                                decoration:BoxDecoration(
                                  color:Colors.red,
                                ),
                              ),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(top: 28,right: 10),
                                      child: Text('الاجهزة التي تم اكمالها',style: TextStyle(fontFamily: 'Cairo',fontSize: 18,color: Color(0xff022C43)))),
                                  Container(
                                    margin: EdgeInsets.only(right: 10,left: 5,bottom: 10,top: 10),
                                    width: 250,
                                    height: 8,
                                    child:Text(''),
                                    decoration:BoxDecoration(
                                      border: Border.all(color:Colors.black12,width: 10),
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.white54,
                                          Colors.black12,
                                          Colors.red,
                                          Colors.red,
                                          Colors.red,
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        decoration: const BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(30),),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xff022C43),
                                  blurRadius: 5.0,
                                  offset: Offset(-2.0, -2.0))
                            ]),

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
  }
}
