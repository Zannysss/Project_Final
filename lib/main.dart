import 'package:flutter/material.dart';
import 'package:eiei/views/home_page.dart';

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
          title: const Text("  "),
          backgroundColor: Colors.green, // กำหนดสีของ AppBar เป็นสีเขียว
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 480,
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "การแจ้งเตือน",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 100,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "โปรดระวังสิ่งกีดขวางในระดับศีรษะ ระยะ 300 cm",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 100,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "แบตเตอรี่เหลือ 20%",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 100,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "การแจ้งเตือนที่ 3",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 100,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "การแจ้งเตือนที่ 4",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 200,
                width: 400,
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: <Widget>[
                    const Text(
                      "ตรวจสอบแบตเตอรี่ และ เปิด/ปิดไม้เท้า",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Button(),
                    const SizedBox(
                      height: 5,
                    ),
                    Button2()
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

Widget Button() {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      minimumSize: Size(350, 60),
      elevation: 5,
      backgroundColor: Color.fromARGB(255, 230, 230, 230),
    ),
    child: Text("ตรวจสอบแบตเตอรี่",
        style: TextStyle(fontSize: 16, color: Colors.black)),
  );
}

Widget Button2() {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      minimumSize: Size(350, 60),
      elevation: 5,
      backgroundColor: Colors.red,
    ),
    child: Text("เปิด/ปิด ไม้เท้า",
        style: TextStyle(fontSize: 16, color: Colors.black)),
  );
}
