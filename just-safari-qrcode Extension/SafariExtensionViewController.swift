//
//  SafariExtensionViewController.swift
//  just-safari-qrcode Extension
//
//  Created by Sunaiwen on 2020/2/2.
//  Copyright © 2020 Sunaiwen. All rights reserved.
//

import SafariServices

class SafariExtensionViewController: SFSafariExtensionViewController {
    
    static let shared: SafariExtensionViewController = {
        let shared = SafariExtensionViewController()
        shared.preferredContentSize = NSSize(width:320, height:240)
        return shared
    }()

}
