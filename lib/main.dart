import 'package:flutter/material.dart';
//import 'package:eiei/views/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: MyHomePage(),
      theme: ThemeData(primaryColor: Colors.green),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("การแจ้งเตือน"),
        backgroundColor: Colors.blue,
        centerTitle: true, // กำหนดสีของ AppBar เป็นสีเขียว
      ),
      body: Container(
        padding: EdgeInsets.all(1.0),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(),
              padding: const EdgeInsets.all(2.0),
              child: Column(
                children: [
                  NotificationCard(
                    text: " การแจ้งเตือน ",
                  ),
                  const SizedBox(height: 2),
                  NotificationCard(text: " "),
                  const SizedBox(height: 2),
                  NotificationCard(text: " "),
                  const SizedBox(height: 2),
                  NotificationCard(text: " "),
                  const SizedBox(height: 2),
                  NotificationCard(text: " "),
                ],
              ),
            ),
            const SizedBox(height: 2),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              height: 200,
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 10,
                  ),
                  Button(),
                  const SizedBox(
                    height: 8,
                  ),
                  Button2()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final String text;

  const NotificationCard({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      height: 90,
      padding: const EdgeInsets.all(10),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

Widget Button() {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      minimumSize: Size(330, 70),
      elevation: 5,
      backgroundColor: Color.fromARGB(255, 230, 230, 230),
    ),
    child: Text("ตรวจสอบแบตเตอรี่",
        style: TextStyle(fontSize: 18, color: Colors.black)),
  );
}

class Button2 extends StatefulWidget {
  const Button2({Key? key}) : super(key: key);

  @override
  _Button2State createState() => _Button2State();
}

class _Button2State extends State<Button2> {
  bool isButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          // เปลี่ยนสถานะเมื่อปุ่มถูกกด
          isButtonPressed = !isButtonPressed;
        });
      },
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(330, 70),
        elevation: 5,
        // ใช้เงื่อนไขในการตรวจสอบสถานะเพื่อเลือกสี
        backgroundColor: isButtonPressed ? Colors.lightGreen : Colors.red,
      ),
      child: const Text(
        "เปิด/ปิด ไม้เท้า",
        style: TextStyle(fontSize: 18, color: Colors.black),
      ),
    );
  }
}
