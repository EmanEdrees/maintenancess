
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maintenances/header_drawer.dart';

class Computer extends StatefulWidget {
  const Computer({Key? key}) : super(key: key);

  @override
  State<Computer> createState() => _ComputerState();
}

class _ComputerState extends State<Computer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
            child: Text('تقنية المعلومات للصيانة والتجهيز',textAlign: TextAlign.right,),
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
              height: 200,
              width: double.infinity,
              child: Text(''),
              decoration: BoxDecoration(
                color:Color(0xff022C43)
              ),
            ),
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //box inside1
              Container(
                margin: EdgeInsets.only(top:10),
                height: 200,
                width: 200,
                child: Text(''),
                decoration: BoxDecoration(
                    color:Color(0xff00648A),
                  borderRadius: BorderRadius.only(topRight:Radius.circular(20)),

                ),
              ),
            ],
          ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //box2
                Container(
                  margin: EdgeInsets.only(top:90,right: 300),
                  height: 200,
                  width: 200,
                  child: Text(''),
                  decoration: BoxDecoration(
                      color:Color(0xff26ADD9),
                    borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20)),

                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 20,left: 20,top:12),
                        height: 680,
                        width: double.infinity,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(20),
                              child:Image.asset("assets/image/computer.png",width: 85, height: 85),
                            ),
                            Container(
                              padding: EdgeInsets.all(20),
                              child: const TextField(
                                decoration: InputDecoration(
                                  labelText: "اسم الموظف",
                                  labelStyle: TextStyle(
                                    color:Color(0xff022C43),
                                    fontFamily: 'Cairo',
                                    fontSize: 18,

                                  ),

                                ),

                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(20),
                              child: const TextField(
                                decoration: InputDecoration(
                                  labelText: "اسم الموظف",
                                  labelStyle: TextStyle(
                                    color:Color(0xff022C43),
                                    fontFamily: 'Cairo',
                                    fontSize: 18,

                                  ),

                                ),

                              ),
                            ),

                            Container(
                              child:  ElevatedButton(onPressed: (){
                                Navigator.pushNamed(context,'/');
                              }, child: Text('ارسال الطلب',style: TextStyle(fontFamily: 'Cairo',fontSize: 17,color: Colors.white ),),
                                style: ButtonStyle(backgroundColor:
                                MaterialStateProperty.all( Color(0xff26ADD9)), padding:MaterialStateProperty.all(EdgeInsets.only(left: 30,right: 30,top:5,bottom: 5)) ,shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0),),),
                                ),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
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
