import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'login.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => InitState();
}

class InitState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    startTimer();
  }
  startTimer()async{
    var duration = Duration(seconds: 3);
    return new Timer(duration,loginRoute);
  }
  loginRoute(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Login()
    ));
  }
  Widget build(BuildContext context) {
   return initWidget();
  }
  Widget initWidget(){
    return Scaffold(
      body: Stack(
        children: [
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Transform(alignment: Alignment.center,
                transform: Matrix4.rotationZ(math.pi / 4),
              child: Container(
                margin: EdgeInsets.only(top:100,left: 50),
                width: 300,
                height: 650,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(120)),
                  gradient: LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomLeft,
                    colors: [
                       Color(0xffFfffff),
                      Color(0xf29C0ED),
                      Color(0xff2ABEEC),
                    ],
                  ),
                ),
              ),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top:100),
                child:Image.asset("assets/image/itlogo.png",width: 180, height: 180),                  ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top:380,left: 10),
                child:Text('تقنية المعلومات للصيانة والتجهيز',style: TextStyle(fontSize: 25,fontFamily: 'Cairo',),)
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(top:420,right: 25),
                  child:Text('Information Technology For Maintance and Supply   ',style: TextStyle(fontSize: 15,fontFamily: 'Cairo',),)
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 100,
                  height: 100,
                  margin: EdgeInsets.only(bottom:200),
                  child:Text(''),
                  decoration: const BoxDecoration(
                    color:Color(0xff2A4D61),
                    borderRadius: BorderRadius.all(Radius.circular(120)),
                  )
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(bottom:10,right: 320),
                  child:Text(''),
                  decoration: const BoxDecoration(
                    color:Color(0xff6FD2EF),
                    borderRadius: BorderRadius.all(Radius.circular(120)),

                  )
              ),
            ],
          ),
        ],
      ),
    );
  }

}
