//
//  ViewController.swift
//  SampleAppSwift
//
//  Created by Yigit Caliskan on 1.11.2019.
//  Copyright © 2019 App Samurai Inc. All rights reserved.
//

import UIKit
import ASAttributionSDK

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onSendSimpleEvent(_ sender: UIButton) {
        ASAttribution.track("Simple Event")
    }
    
    @IBAction func onSendEventWithData(_ sender: UIButton) {
        let data: [String: Any] = ["sample_data_int": 1,
                                    "sample_data_str": "two",
                                    "sample_data_list": ["str_data", 3]]
        ASAttribution.track("Event With Data", data: data)
    }
}

