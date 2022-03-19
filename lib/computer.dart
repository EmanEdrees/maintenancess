
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maintenances/header_drawer.dart';

class Computer extends StatefulWidget {
  const Computer({Key? key}) : super(key: key);
  @override
  State<Computer> createState() => _ComputerState();
}

class _ComputerState extends State<Computer> {
  String intinal_drop = 'مكتب المحافظ';

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
                margin: EdgeInsets.only(top:100),
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
                  margin: EdgeInsets.only(top:190,right: 300),
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
                        child: SingleChildScrollView(
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
                              //dropdown
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      padding: EdgeInsets.only(bottom: 2,right: 20),
                                      child: Text('القسم',style: TextStyle(
                                        color:Color(0xff022C43),
                                        fontFamily: 'Cairo',
                                        fontSize: 18,

                                      ),)
                                  ),
                                  Container(
                                    width: 600,
                                    padding: EdgeInsets.all(20),
                                    child: DropdownButton<String>(value: intinal_drop ,iconSize: 36,isExpanded:true,
                                      hint: Text("القسم", style: TextStyle(color: Colors.black,fontSize: 18,fontFamily: 'Cairo'),
                                    ),onChanged: (newval){
                                      setState(() {
                                        intinal_drop = newval!;
                                      });
                                    },items:<String>['مكتب المحافظ','مكتب المعاون الاداري','هندسة الادارة المحلية','ادارة المشاريع'].map<DropdownMenuItem<String>>((String dep){
                                      return DropdownMenuItem<String>(child: Text(dep,style: TextStyle(fontFamily: 'Cairo',fontSize: 18),),value: dep);
                                    }).toList(),),
                                  ),
                                ],
                              ),
                              //وصف العطل
                              Container(
                                padding: EdgeInsets.all(20),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    labelText: "وصف العطل",
                                    labelStyle: TextStyle(
                                      color:Color(0xff022C43),
                                      fontFamily: 'Cairo',
                                      fontSize: 18,
                                    ),
                                    hintMaxLines: 2,
                                  ),

                                ),
                              ),
                              //اجراءات اضافية
                              Container(
                                padding: EdgeInsets.all(20),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    labelText: "اجراءات اضافية",
                                    labelStyle: TextStyle(
                                      color:Color(0xff022C43),
                                      fontFamily: 'Cairo',
                                      fontSize: 18,

                                    ),
                                    hintMaxLines: 2,

                                  ),

                                ),
                              ),
                              //ارسال الطلب
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
