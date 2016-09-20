//
//  MXHomeViewController.swift
//  DoYuTV
//
//  Created by 王智明 on 16/9/20.
//  Copyright © 2016年 王智明. All rights reserved.
//

import UIKit

private let titleViewH : CGFloat = 40

class MXHomeViewController: UIViewController {

    //MARK:懒加载属性
    private lazy var pageTitleView : MXPageTitleView = {
    
        //1.设置frame
        let titleViewFrame = CGRect(x: 0, y: knavY, width: kSreenW, height: titleViewH)
        let titles = ["推荐","游戏","娱乐","趣玩"]
        
        let titleView = MXPageTitleView(frame: titleViewFrame, titles: titles)
        
        return titleView
    
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //设置UI界面
        createUI()
        
    }
}
   
    //MARK:设置UI
    extension MXHomeViewController {
    
        private func createUI() {
         
            //不需要调整UIscrollView的内边距
            automaticallyAdjustsScrollViewInsets = false
            
           //1.设置导航栏
            setupNav()
           
            //2.添加titleView
            self.view.addSubview(pageTitleView)
            
        }
        
        //MARK:设置导航栏
        private func setupNav () {
            
//            //1.设置左侧的item
//            let button = UIButton()
//            
//            button.setImage(UIImage(named: "logo"), forState: .Normal)
//            
//            button.sizeToFit()
//            
//            
//            
//            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
            
            //1.设置左侧的item
            navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "logo")
            //设置右边的itme
            let size = CGSize(width: 40, height: 40)
            
            let historyItem = UIBarButtonItem(imageName: "image_my_history", heightName: "Image_my_history_click", size: size)
            
            let searchItem = UIBarButtonItem(imageName: "btn_search", heightName: "btn_search_clicked", size: size)
            
            
            let sqrcodeItem = UIBarButtonItem(imageName: "Image_scan", heightName: "Image_scan_click", size: size)
            
            
            navigationItem.rightBarButtonItems = [historyItem , searchItem , sqrcodeItem]
            
         
        }
        
        //MARK:添加pageTitleView
    
    }

