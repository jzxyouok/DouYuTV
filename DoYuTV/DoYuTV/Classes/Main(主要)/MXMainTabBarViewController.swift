//
//  MXMainTabBarViewController.swift
//  DoYuTV
//
//  Created by 王智明 on 16/9/20.
//  Copyright © 2016年 王智明. All rights reserved.
//

import UIKit

class MXMainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
         addChildVc("Home")
        addChildVc("Live")
        addChildVc("Focus")
        addChildVc("Me")
    }

    private func addChildVc(storyBoardName : String) {
     
        
        let childVc = UIStoryboard(name: storyBoardName , bundle: nil).instantiateInitialViewController()!
        
        addChildViewController(childVc)
        
        
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
