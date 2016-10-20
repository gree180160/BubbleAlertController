//
//  Quarz.swift
//  BubbleAlertController
//
//  Created by WillowRivers on 16/10/19.
//  Copyright © 2016年 WillowRivers. All rights reserved.
//

import UIKit

class Quarz: UIView {
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder) ;
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame) ;
    }
    override func draw(_ rect: CGRect)
    {
        let context = UIGraphicsGetCurrentContext() ;
        context?.setTextDrawingMode(.fill) ;
        context?.setCharacterSpacing(5) ;
        context?.setFillColor(red: 1 , green: 1 , blue: 0 , alpha: 1) ;
        context?.setStrokeColor(red: 0 , green: 1, blue: 1, alpha: 1) ;
        context?.setTextDrawingMode(.fill) ;
        
        let contentStr : NSString = "struglefornewjob" ;

        let font2 = UIFont(name: "ArialMT", size: 30) ; //***font2 不能直接用在string.draw()中，因为函数参数类型为
        let textColor = UIColor.red ;
        let textSytle = NSMutableParagraphStyle.default.mutableCopy() ;
        let textFontAttr = [NSFontAttributeName : font2! , NSForegroundColorAttributeName : textColor , NSParagraphStyleAttributeName : textSytle] ;
        //contentStr.draw(at: CGPoint(x : 0 , y : 300), withAttributes: textFontAttr) ;
        
       // let font = UIFont(name: "Thonburi", size: 18) ;
        contentStr.draw(at: CGPoint(x: 0 , y: 300) , withAttributes: [NSFontAttributeName : font2!]) ;
        //contentStr.draw(at: CGPoint(x : 0 , y : 300), withAttributes: )
        UIGraphicsEndImageContext() ;
    }


}
