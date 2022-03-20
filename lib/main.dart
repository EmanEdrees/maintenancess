import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:maintenances/cancat.dart';
import 'package:maintenances/completedevice.dart';
import 'package:maintenances/copymachine.dart';
import 'package:maintenances/devicestatus.dart';
import 'package:maintenances/home.dart';
import 'package:maintenances/internet.dart';
import 'package:maintenances/nofitication.dart';
import 'package:maintenances/printer.dart';
import 'package:maintenances/progress.dart';
import 'package:maintenances/supply.dart';
import 'package:maintenances/suppstatus.dart';
import 'package:maintenances/who.dart';
import 'computer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Cario',
        visualDensity: VisualDensity.adaptivePlatformDensity,

      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/nofitication': (context) => const Nofitication(),
        '/computer': (context) => const Computer(),
        '/copymachine': (context) => const Copymachine(),
        '/printer': (context) => const Printer(),
        '/internet': (context) => const Internet(),
        '/devicestatus': (context) => const Devicestatus(),
        '/supply': (context) => const Supply(),
        '/who': (context) => const Who(),
        '/concat': (context) => const Concat(),
        '/completedevice': (context) => const Completedevice(),
        '/progress': (context) => const Progress(),
        '/suppstatus': (context) => const Suppstatus(),


      },
      locale: Locale('ar'),
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}




