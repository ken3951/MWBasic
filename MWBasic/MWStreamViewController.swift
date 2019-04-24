//
//  MWStreamViewController.swift
//  MWBasic
//
//  Created by mwk_pro on 2019/4/23.
//  Copyright © 2019 mwk. All rights reserved.
//

import UIKit

class MWStreamViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func testStreamAction(_ sender: Any) {
        let stream = MWStream(dataValue: 1).execute({ (receivedValue,streamContinue) in
            mw_globalSyn {
                print("receivedValue=\(receivedValue ?? "")")
                let value = 2
                print("sendValue=\(value)")
                streamContinue(value)
            }
        })?.execute({ (receivedValue,streamContinue) in
            mw_globalSyn {
                print("receivedValue=\(receivedValue ?? "")")
                let value = 3
                print("sendValue=\(value)")
                streamContinue(value)
            }
        })?.execute({ (receivedValue,streamContinue) in
            mw_globalSyn {
                print("receivedValue=\(receivedValue ?? "")")
                let value = 4
                print("sendValue=\(value)")
                streamContinue(value)
            }
        })
        
        print("endValue=\(stream?.dataValue ?? "")")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
