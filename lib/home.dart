import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'header_drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
           Navigator.pushNamed(context,'/nofitication');
}, icon: Icon(Icons.notifications_none))
          ],
          flexibleSpace: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Container(
                    margin: EdgeInsets.only(top:60),
                    child:Image.asset("assets/image/itlogo.png",width: 85, height: 85),                  ),
                Container(
                  margin: EdgeInsets.only(top:10),
                  child: Text('قسم تقنية المعلومات',style: TextStyle(fontFamily: 'Cairo',fontSize: 20,color: Colors.white ),),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Color(0xff022C43),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
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
      body: Container(
        margin: EdgeInsets.only(top:20,left: 25,right: 25),
        child: GridView(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
              mainAxisExtent: 160,crossAxisSpacing: 25,
              mainAxisSpacing: 25),
          children: [
            InkWell(
              onTap: (){
                Navigator.pushNamed(context,'/computer');
              },
              child: Container(
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Image.asset("assets/image/computer.png",width: 85, height: 85),
                    Text('صيانة الحاسبات',style: TextStyle(fontFamily: 'Cairo',fontSize: 17,color: Color(0xff022C43))),
                  ],
                ),

              ),
            ),
            InkWell(
        onTap: (){
          Navigator.pushNamed(context,'/copymachine');
        },

        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/image/copymachine.png",width: 85, height: 85),
              Text('صيانة اجهزة استنساخ',style: TextStyle(fontFamily: 'Cairo',fontSize: 17,color: Color(0xff022C43))),
            ],
          ),
        ),
      ),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context,'/printer');
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/image/printer.png",width: 85, height: 85),
                    Text('صيانة طابعات',style: TextStyle(fontFamily: 'Cairo',fontSize: 17,color: Color(0xff022C43))),
                  ],
                ),

              ),
            ),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context,'/internet');

              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/image/internet.png",width: 85, height: 85),
                    Text('صيانة انترنيت',style: TextStyle(fontFamily: 'Cairo',fontSize: 17,color: Color(0xff022C43))),
                  ],
                ),

              ),
            ),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context,'/devicestatus');
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/image/devicestatus.png",width: 85, height: 85),
                    Text('حالة الاجهزة',style: TextStyle(fontFamily: 'Cairo',fontSize: 17,color: Color(0xff022C43))),
                  ],
                ),

              ),
            ),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context,'/supply');

              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/image/supply.png",width: 85, height: 85),
                    Text('طلب تجهيز',style: TextStyle(fontFamily: 'Cairo',fontSize: 17,color: Color(0xff022C43))),
                  ],
                ),

              ),
            ),
          ],

        ),
      ),
    );

  }
}