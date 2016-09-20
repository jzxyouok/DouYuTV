//
//  UIbarButtonItemExtension.swift
//  DoYuTV
//
//  Created by 王智明 on 16/9/20.
//  Copyright © 2016年 王智明. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
 
   /*//1.类方法创建item
    class func createItem (imageName : String , heigthName : String , size : CGSize) -> UIBarButtonItem{
        
        //1.创建button
        let btn = UIButton()
        
        btn.setImage(UIImage(named: imageName), forState: .Normal)
        
        btn.setImage(UIImage(named: heigthName), forState: .Highlighted)
        
        btn.frame = CGRect(origin: CGPointZero, size: size)
        
        return UIBarButtonItem(customView: btn);
        
        
    }*/
    
    //2.便利构造函数：1.convenience开头 2.在构造函数中必须明确调用一个设计的构造函数（self）
    
    convenience init(imageName : String , heightName : String = "", size : CGSize = CGSizeZero) {
      
        let button = UIButton()
        
        button.setImage(UIImage(named: imageName), forState: .Normal)
        
        if heightName != "" {
            
           button.setImage(UIImage(named: heightName), forState: .Highlighted)
        }
        
        if size == CGSizeZero {
            
             button.sizeToFit()

        }else {
         
             button.frame = CGRect(origin: CGPointZero, size: size)
        
        }
        
        //创建item
        self.init(customView :button)
    
    
    }
    
    

}