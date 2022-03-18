
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20,left: 20,top:50),
                      height: 700,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Container(
                            child:Image.asset("assets/image/computer.png",width: 85, height: 85),
                          ),
                          Container(
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: "اسم الموظف",
                                labelStyle: TextStyle(
                                  color:Color(0xff022C43),
                                  fontFamily: 'Cairo',
                                  fontSize: 20,

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
                          borderRadius: BorderRadius.all(Radius.circular(30)),

    ),
                    ),

                  ],
                ),
              ],
            ),
          ],

        ),

      ),
    );
  }
}
