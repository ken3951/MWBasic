//
//  ViewController.swift
//  MWBasic
//
//  Created by mwk_pro on 2019/3/29.
//  Copyright © 2019 mwk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        testBtn.mw_eventInterval = 10
        
        let _ = MWStream().execute({ (dataValue,streamContinue) in
            print("dataDic=\(dataValue ?? "")")
            streamContinue(["key": 1])
            print("test1")
        })?.execute({ (dataValue,streamContinue) in
            print("dataDic=\(dataValue ?? "")")
            streamContinue(["key": 2])
            print("test2")
        })
    }

    @IBAction func btnActopm(_ sender: UIButton) {
        
        let image = mw_getScreenShotFromWindow()
    }
    
}

