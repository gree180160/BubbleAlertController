//
//  MyAlertC.swift
//  BubbleAlertController
//
//  Created by WillowRivers on 16/10/19.
//  Copyright © 2016年 WillowRivers. All rights reserved.
//

import UIKit

class MyAlertC: UIAlertController {


    override func viewDidLoad() {
        super.viewDidLoad() ;
        let actionD = UIAlertAction(title: "Got It ! ", style: .default , handler: nil) ;
        self.addAction(actionD) ;
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
