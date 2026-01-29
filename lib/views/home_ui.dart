// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_iot_second_app/views/signin_ui.dart';
import 'package:flutter_iot_second_app/views/signup_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeUi extends StatelessWidget {
  const HomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 150.0,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Image.asset(
                'assets/images/logo.png',
                width: 250.0,
                height: 250.0,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 180.0,
            ),
            Text(
              'ยินดีต้อนรับ เหล่าผู้เจริญที่มากไปด้วยปัญญา',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
            Text(
              'สวัดดีครับ ยินดีต้อนรับเข้าสู่ชมรมคนชอบหมี',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.grey[800],
              ),
            ),
            Text(
              'ชมรมนี้ถูกจัดตั้งขึ้นโดยคนชอบหมี',
              style: GoogleFonts.itim(
                fontSize: 15.0,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SigninUi(),
                      ),
                    );
                  },
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(
                      150.0,
                      50.0,
                    ),
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignupUi(),
                      ),
                    );
                  },
                  child: Text(
                    'SIGNUP',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      150.0,
                      50.0,
                    ),
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    backgroundColor: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
