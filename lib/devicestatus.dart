import 'package:flutter/material.dart';
import 'package:maintenances/header_drawer.dart';

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
        child: Container(
          margin: EdgeInsets.only(top:20,left: 25,right: 25),
          child: GridView(
            gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,
                mainAxisExtent: 100,
                mainAxisSpacing: 10),
            children: [
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context,'/completedevice');
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
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
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context,'/progress');
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        margin: EdgeInsets.only(right: 20),
                        child:Text(''),
                        decoration:BoxDecoration(
                          color:Color(0xffFFBF0B),
                        ),
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 28,right: 10),
                              child: Text('الاجهزة قيد التنفيذ',style: TextStyle(fontFamily: 'Cairo',fontSize: 18,color: Color(0xff022C43)))),
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
                                  Color(0xffFFBF0B),
                                  Color(0xffFFBF0B),
                                  Color(0xffFFBF0B),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context,'/suppstatus');
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        margin: EdgeInsets.only(right: 20),
                        child:Text(''),
                        decoration:BoxDecoration(
                          color: Color(0xff2BBE70),

                        ),
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 28,right: 10),
                              child: Text('الأقسام التي تم تجهيزها بالمواد',style: TextStyle(fontFamily: 'Cairo',fontSize: 18,color: Color(0xff022C43)))),
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
                                  Color(0xff2BBE70),
                                  Color(0xff2BBE70),
                                  Color(0xff2BBE70),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                ),
              ),

            ],

          ),
        ),

      ),
    );
  }
}
