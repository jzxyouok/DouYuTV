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
        
        //添加子视图控制器
        addChildVc("Home")
        addChildVc("Live")
        addChildVc("Focus")
        addChildVc("Me")
    }

    //MARK:添加子视图控制器
    private func addChildVc(storyBoardName : String) {
     
        //1.根据StoryBoard来创建视图控制器
        let childVc = UIStoryboard(name: storyBoardName , bundle: nil).instantiateInitialViewController()!
        //2.添加为tabBar的子视图控制器
        addChildViewController(childVc)
        
    }
    
   
}
