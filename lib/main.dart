import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gpdi_betlehem_apps/custom_colors.dart';
import 'package:gpdi_betlehem_apps/font_style.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(const Duration(seconds: 1));
  FlutterNativeSplash.remove();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        primarySwatch: Colors.red
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("GPdI Betlehem", style: TextStyle(color: Colors.white70),),
          backgroundColor: darkBlue,
          // actions: <Widget> [
          // actions: [
          //   IconButton(
          //     icon: Icon(Icons.church), 
          //     onPressed: () {},
          //     color: Colors.yellowAccent,
          //   )
          // ]
        ),
        body: SafeArea(
          child: Container(
            // color: Colors.amberAccent,
            // Margin and padding only can be set inside container
            margin: EdgeInsets.only(top: 0, bottom: 0, right: 0, left: 0),
            padding: EdgeInsets.all(0),
            // padding: EdgeInsets.only(top: 0, bottom: 0, right: 0, left: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    const Image(
                      image: AssetImage('assets/images/logo_gpdi.png'),
                      height: 300,
                      // width: 800,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 4),
                      child: Text("Selamat Datang!", style: mainHeader),
                    ),
                    Text(
                      "Ini adalah aplikasi\nuntuk jemaat GPDI Betlehem",
                      style: subHeader,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ],
            )
          ),
        )
      )
    );
  }
}

