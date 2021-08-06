//
//  AppDelegate.swift
//  BleBatteryStatus
//
//  Created by Personal on 07/08/21.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    var statusBarItem: NSStatusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        guard let statusButton = statusBarItem.button else { return }
                statusButton.title = "BLE Battery"
    }


}

