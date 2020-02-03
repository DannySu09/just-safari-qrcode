//
//  SafariExtensionViewController.swift
//  just-safari-qrcode Extension
//
//  Created by Sunaiwen on 2020/2/2.
//  Copyright © 2020 Sunaiwen. All rights reserved.
//

import SafariServices
import QRCoder

class SafariExtensionViewController: SFSafariExtensionViewController {
    @IBOutlet weak var qrcodeCanvas: NSImageView!
    
    static let shared: SafariExtensionViewController = {
        let shared = SafariExtensionViewController()
        shared.preferredContentSize = NSSize(width:320, height:320)
        return shared
    }()
    
    override func viewWillAppear() {
        SFSafariApplication.getActiveWindow(completionHandler: {(win: SFSafariWindow?) -> Void in
            win?.getActiveTab(completionHandler: {(tab: SFSafariTab?) -> Void in
                tab?.getActivePage(completionHandler: {(page: SFSafariPage?) -> Void in
                    page?.getPropertiesWithCompletionHandler({(prop: SFSafariPageProperties?) -> Void in
                        let generator = QRCodeGenerator()
                        if let url = prop?.url {
                            let image: QRImage? = generator.createImage(url: url, size: CGSize(width: 250, height: 250))
                            self.qrcodeCanvas.image = image
                        }
                    })
                })
            })
        })
    }
    
    override func viewDidDisappear() {
        qrcodeCanvas.image = nil
    }
}
