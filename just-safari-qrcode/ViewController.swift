//
//  ViewController.swift
//  just-safari-qrcode
//
//  Created by Sunaiwen on 2020/2/2.
//  Copyright © 2020 Sunaiwen. All rights reserved.
//

import Cocoa
import SafariServices.SFSafariApplication

class ViewController: NSViewController {
    var selectedColor: String?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func openSafariExtensionPreferences(_ sender: AnyObject?) {
        SFSafariApplication.showPreferencesForExtension(withIdentifier: "sunaiwen.just-safari-qrcode-Extension") { error in
            if let _ = error {
                // Insert code to inform the user that something went wrong.

            }
        }
    }
}
