//
//  ViewController.swift
//  Notification-Name
//
//  Created by r_ayaki on 2017/03/22.
//  Copyright © 2017年 ayakix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        NotificationCenter.default.addObserver(self, selector: #selector(onSampleNotified(_:)), name: NSNotification.Name(rawValue: "sample"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(onSampleNotified(_:)), name: .sample, object: nil)
    }
    
    deinit {
//        NotificationCenter.default.removeObserver(self, name: NSNotification.Name(rawValue: "sample"), object: nil)
        NotificationCenter.default.removeObserver(self, name: .sample, object: nil)
    }
    
    func onSampleNotified(_ notification: NSNotification) {
        print("Notification button pushed")
    }
}
