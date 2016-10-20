//
//  ViewController.swift
//  BubbleAlertController
//
//  Created by WillowRivers on 16/10/19.
//  Copyright © 2016年 WillowRivers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var labelBtn : UIButton! ;
    var alertBtn : UIButton! ;
    var queue = OperationQueue() ;
    override func viewDidLoad()
    {
        super.viewDidLoad() ;
        labelBtn = UIButton(frame: CGRect(x: 10 , y: 150 , width: 158 , height: 60)) ;
        labelBtn.setTitle("showLabel", for: .normal) ;
        labelBtn.backgroundColor = UIColor.brown ;
        labelBtn.addTarget(self , action: #selector(ViewController.showLabel), for: .touchUpInside) ;
        
        alertBtn = UIButton(frame: CGRect(x: 10 , y: 350 , width: 158 , height: 60)) ;
        alertBtn.setTitle("showAlert", for: .normal) ;
        alertBtn.backgroundColor = UIColor.brown ;
        alertBtn.addTarget(self , action: #selector(ViewController.showAlter), for: .touchUpInside) ;
        self.view.addSubview(labelBtn) ;
        self.view.addSubview(alertBtn) ;
        let qu = Quarz(frame: self.view.frame) ;
        qu.backgroundColor = UIColor.white ;
        self.view.addSubview(qu) ;
        // Do any additional setup after loading the view, typically from a nib.
    }
    func showLabel() -> Void {
        
        let label = UILabel(frame: CGRect(x: 50, y: 100, width: 250 , height: 40)) ;
        label.text = "without content now !!!" ;
        self.view.addSubview(label) ;
        //let op = Operation() ;
        //op.completionBlock = { label.isHidden = true ;}
        //queue.addOperations( [op] , waitUntilFinished: true) ;
       // let ca =  CAAnimation() ;
        
        //ca.perform("hiddenView" , with: self.alertBtn , afterDelay: 5) ;
        //let timer = Timer(timeInterval: 3, target: self , selector: #selector(ViewController.hiddenView(view:)), userInfo: label , repeats: false)
        
        //label.isHidden = true ;
        //alertBtn.isHidden = true ;
    }
    func showAlter() -> Void {
        let alert = MyAlertC(title: "remind", message: "NO Content! please wait for the follow-up to add", preferredStyle: .actionSheet) ;
        self.present(alert , animated: true , completion: {
            Thread.sleep(forTimeInterval: 2) ;   alert.dismiss(animated: false , completion: nil)}) ;
        
        /*
        let alert = UIAlertController(title: "alert", message: "alert message", preferredStyle: .actionSheet) ;
        let alertAction = UIAlertAction(title: "YES", style: .cancel , handler: nil) ;
        alert.addAction(alertAction) ;
         
      */
        /*self.present(alert , animated: true , completion: {self.queue.addOperation {
            Thread.sleep(forTimeInterval: 1) ;   alert.dismiss(animated: false , completion: nil)
            } }) ;
        */
       
        
       // let timer1 = Timer(timeInterval: 1 , repeats: false , block: {_ in alert.dismiss(animated: false , completion: nil)})
    }
    
    func hiddenView(view : UIView) -> Void {
        view.removeFromSuperview() ;
        //print("view frame is :\(view.frame)") ;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

