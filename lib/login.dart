import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => InitState();
}

class InitState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }
  Widget initWidget(){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children:
            [
              Container(
                margin: EdgeInsets.only(top:50),
                child: Center(

                  child:Image.asset("assets/image/itlogo.png",width: 100, height: 100),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //box inside1
                  Container(
                    margin: EdgeInsets.only(top:220),
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
                    margin: EdgeInsets.only(top:400,right: 300),
                    height: 200,
                    width: 200,
                    child: Text(''),
                    decoration: BoxDecoration(
                      color:Color(0xff26ADD9),
                      borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20)),

                    ),
                  ),
                ],
              ), //bigbox
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 20,left: 20,top:200),
                        height: 500,
                        width: double.infinity,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                                Container(
                                  margin: EdgeInsets.all(65),
                                  child: const Center(
                                  child: Text('تسجيل الدخول',style: TextStyle(fontSize: 20,fontFamily: 'Cairo',color: Color(0xff022C43)),),
                              ),
                                ),
                              Form(
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 20,right: 20,top: 10),
                                      padding:EdgeInsets.only(right: 20,left: 20),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.grey[200],

                                      ),
                                      child:  TextFormField(
                                        textAlign: TextAlign.center,

                                        cursorColor: Color(0xff022C43),
                                        decoration: InputDecoration(
                                          hintText: "اسم المستخدم",
                                          hintStyle: TextStyle(
                                            fontFamily: 'Cairo',
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                        ),

                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 20,right: 20,top: 10),
                                      padding:EdgeInsets.only(right: 20,left: 20),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.grey[200],

                                      ),
                                      child:  TextFormField(
                                        textAlign: TextAlign.center,
                                        cursorColor: Color(0xff022C43),
                                        decoration: InputDecoration(
                                          hintText: "كلمة المرور",
                                          hintStyle: TextStyle(
                                            fontFamily: 'Cairo',
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                        ),

                                      ),
                                    ),

                                    //ارسال الطلب
                                    Container(
                                      margin: EdgeInsets.all(70),
                                      child:  ElevatedButton(onPressed: (){
                                        Navigator.pushNamed(context,'/');
                                      }, child: Text('الدخول',style: TextStyle(fontFamily: 'Cairo',fontSize: 17,color: Colors.white ),),
                                        style: ButtonStyle(backgroundColor:
                                        MaterialStateProperty.all( Color(0xff022C43)), padding:MaterialStateProperty.all(EdgeInsets.only(left: 70,right: 70,top:10,bottom: 10)) ,shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),),),
                                        ),
                                      ),
                                    ),
                                  ],
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
            ],

          ),
        ),

      ),
    );
  }
}
