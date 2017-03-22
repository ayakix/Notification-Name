//
//  DetailViewController.swift
//  Notification-Name
//
//  Created by r_ayaki on 2017/03/22.
//  Copyright © 2017年 ayakix. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction private func onNotifyButtonClick(_ sender: UIButton) {
//        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "sample"), object: nil, userInfo: nil)
        NotificationCenter.default.post(name: .sample, object: nil)
    }
}
