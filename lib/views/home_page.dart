import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eiei/controllers/bluetooth_controller.dart';

class BluetoothPage extends StatefulWidget {
  @override
  _BluetoothPageState createState() => _BluetoothPageState();
}

class _BluetoothPageState extends State<BluetoothPage> {
  final BluetoothController controller = Get.find<BluetoothController>(); // Find the BluetoothController instance

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bluetooth Devices'),
      ),
      body: Container(
        child: Obx(() => ListView.builder(
          itemCount: controller.devices.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(controller.devices[index].platformName),
              subtitle: Text(controller.devices[index].remoteId.toString()),
              onTap: () {
                controller.connectToDevice(controller.devices[index]);
              },
            );
          },
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (controller.isScanning.value) {
            controller.stopScan();
          } else {
            controller.startScan();
          }
        },
        child: Obx(() => Icon(controller.isScanning.value ? Icons.stop : Icons.bluetooth)),
      ),
    );
  }
}

