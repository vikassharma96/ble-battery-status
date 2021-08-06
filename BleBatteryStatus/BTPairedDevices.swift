import Foundation
import IOBluetooth

class BluetoothDevices {
  func pairedDevices() {
    print("Bluetooth devices:")
    guard let devices = IOBluetoothDevice.pairedDevices() else {
      print("No devices")
      return
    }
    for item in devices {
      if let device = item as? IOBluetoothDevice {
        print("Name: \(device.name)")
        print("Paired?: \(device.isPaired())")
        print("Connected?: \(device.isConnected())")
      }
    }
  }
}
