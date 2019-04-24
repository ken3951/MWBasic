//
//  MWSynViewController.swift
//  MWBasic
//
//  Created by mwk_pro on 2019/4/23.
//  Copyright © 2019 mwk. All rights reserved.
//

import UIKit

class MWSynViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func mainSynAction(_ sender: Any) {
        DispatchQueue.global().async {
            print("global isMainThread = \(Thread.isMainThread)")
            mw_mainSyn {
                print("mw_mainSyn isMainThread = \(Thread.isMainThread)")
                print("refreshUI")
            }
            print("end")
        }
        
    }
    
    @IBAction func globalSyn(_ sender: Any) {
        mw_globalSyn {
            print("mw_globalSyn isMainThread = \(Thread.isMainThread)")
        }
        print("end")
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
