
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          centerTitle: true,
          title: Text(''),
          actions: [
            IconButton(onPressed: (){
              Navigator.pushNamed(context,'/');
            }, icon: Icon(Icons.arrow_back_ios_outlined))
          ],
          flexibleSpace: Container(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  child: Text('قسم تقنية المعلومات',style: TextStyle(fontFamily: 'Cairo',fontSize: 20,color: Colors.white, ),textAlign: TextAlign.end,),
                ),
              ],
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
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
              decoration: BoxDecoration(
                color: Color(0xff022C43),
              ),
              child: Text(''),

            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 70,right: 20,left: 20,bottom: 20),
                    height: 700,
                    decoration: BoxDecoration
                      (borderRadius: BorderRadius.only
                      (topRight: Radius.circular(50),topLeft:Radius.circular(50),
                        bottomRight: Radius.circular(50),bottomLeft: Radius.circular(50) ),color: Colors.white,),
                    child: Text(''),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      margin:  EdgeInsets.only(top: 100,right:150,left: 150) ,
                      child:Image.asset("assets/image/computer.png",width: 85, height: 85),
                    ),
                    TextField(

                    ),
                  ],
                ),
              ],
            ),

            Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Container(
                      margin: EdgeInsets.only(top: 650,right: 110,),
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
              ],
            )
          ],

        ),

      ),
    );
  }
}
