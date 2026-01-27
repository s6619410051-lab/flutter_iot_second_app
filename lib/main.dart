import 'package:flutter/material.dart';
import 'package:flutter_iot_second_app/views/home_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
      //เรียกใช้งานคลาสที่เรียกใช้ Widget หลักของแอปฯ
      Flutteriotsecondapp());
}

//---------------------------------------------------------

class Flutteriotsecondapp extends StatefulWidget {
  const Flutteriotsecondapp({super.key});

  @override
  State<Flutteriotsecondapp> createState() => _FlutteriotsecondappState();
}

class _FlutteriotsecondappState extends State<Flutteriotsecondapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //ซ่อนป้าย debug คาดแดง
      debugShowCheckedModeBanner: false,
      //กำหนดหน้าจอแรก
      home: HomeUi(),
      //กำหนด Theme โดยเฉพาะ font หลักของแอปฯ
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
