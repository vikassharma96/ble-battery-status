import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    var statusBarItem: NSStatusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    var charged : Int = 0

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        guard let statusButton = statusBarItem.button else { return }
        statusButton.title = (charged == 0) ? "NA" : "\(charged)"
        var bt = BluetoothDevices()
        bt.pairedDevices()
    }

}

