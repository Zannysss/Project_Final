import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:get/get.dart';

class BluetoothController extends GetxController {
  late FlutterBluePlus flutterBlue;
  RxList<ScanResult> scanResults = RxList<ScanResult>();
  RxList<BluetoothDevice> devices = RxList<BluetoothDevice>();
  var isScanning = false.obs;

  @override
  void onInit() {
    super.onInit();
    flutterBlue = FlutterBluePlus();
  }
  void startScan() {
    try {
      FlutterBluePlus.startScan(timeout: const Duration(seconds: 5));
      FlutterBluePlus.scanResults.listen((results) {
        scanResults.assignAll(results);
      });
    } catch (e) {
      print("Error starting Bluetooth scan: $e");
    }
  }

  void stopScan() {
    try {
      FlutterBluePlus.stopScan();
    } catch (e) {
      print("Error stopping Bluetooth scan: $e");
    }
  }

  void connectToDevice(BluetoothDevice device) {
    // โค้ดสำหรับเชื่อมต่อกับอุปกรณ์ Bluetooth
  }
}