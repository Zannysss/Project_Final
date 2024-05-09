import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eiei/controllers/bluetooth_controller.dart';

class BluetoothPage extends StatelessWidget {
  final BluetoothController controller = Get.put(BluetoothController());

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
              title: Text(controller.devices[index].name),
              subtitle: Text(controller.devices[index].id.toString()),
              onTap: () {
                controller.connectToDevice(controller.devices[index]);
              },
            );
          },
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.startScan();
        },
        child: Icon(Icons.bluetooth),
      ),
    );
  }
}