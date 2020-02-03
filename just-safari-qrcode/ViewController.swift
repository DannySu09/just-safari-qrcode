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
    @IBOutlet weak var colorSelect: NSPopUpButton!
    @IBOutlet weak var colorLabel: NSTextField!
    
    var selectedColor: String?
    
    override func viewWillAppear() {
        super.viewWillAppear()
        initColorSelect()
        colorLabel.stringValue = "Color Highlight"
    }

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
    
    @IBAction func handleColorSelect(_ sender: Any?) {
        if let selected = colorSelect.titleOfSelectedItem {
            selectedColor = selected
        }
    }
    
    func initColorSelect() {
        colorSelect.removeAllItems()
        colorSelect.addItem(withTitle: "blue")
        colorSelect.addItem(withTitle: "black")
    }

}
