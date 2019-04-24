//
//  MWToastViewController.swift
//  MWBasic
//
//  Created by mwk_pro on 2019/4/23.
//  Copyright © 2019 mwk. All rights reserved.
//

import UIKit

class MWToastViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func topAction(_ sender: Any) {
        MWToast.Config.backgroundColor = UIColor.mw_colorFromRGB(NSInteger(arc4random_uniform(uint(255))), NSInteger(arc4random_uniform(uint(255))), NSInteger(arc4random_uniform(uint(255))))
        
        mw_showToast(message: "topMessagetopMessagetopMessagetopMessagetopMessagetopMessagetopMessagetopMessagetopMessage\ntopMessage", position: .top)
    }
    
    @IBAction func centerAction(_ sender: Any) {
        MWToast.Config.backgroundColor = UIColor.mw_colorFromRGB(NSInteger(arc4random_uniform(uint(255))), NSInteger(arc4random_uniform(uint(255))), NSInteger(arc4random_uniform(uint(255))))

        mw_showToast(message: "centerMessage", position: .center)
    }
    
    @IBAction func bottomAction(_ sender: Any) {
        MWToast.Config.backgroundColor = UIColor.mw_colorFromRGB(NSInteger(arc4random_uniform(uint(255))), NSInteger(arc4random_uniform(uint(255))), NSInteger(arc4random_uniform(uint(255))))

        mw_showToast(message: "bottomMessage", position: .bottom)
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
