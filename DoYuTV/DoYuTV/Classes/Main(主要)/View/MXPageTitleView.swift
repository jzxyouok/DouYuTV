//
//  MXPageTitleView.swift
//  DoYuTV
//
//  Created by 王智明 on 16/9/20.
//  Copyright © 2016年 王智明. All rights reserved.
//

import UIKit

private let  kIndeiterH  : CGFloat = 2

private let  bottomLineH :CGFloat = 0.5

class MXPageTitleView: UIView {

    
    //MARK:-定义属性
    //是一个数组里面装的是title的文字
    private var titles : [String]
    
    //MARK:懒加载UIScrollView
    private lazy var scrollView : UIScrollView = {
        
        let scrollView = UIScrollView()
        
        scrollView.showsHorizontalScrollIndicator = false
        
        scrollView.bounces = false
        
        scrollView.scrollsToTop = false
        
        return scrollView
        
    }()
    
    //MARK:懒加载
    private lazy var scrollLine : UIView =  {
     
        let scrollLine = UIView()
        
        scrollLine.backgroundColor = UIColor.orangeColor()
    
        return scrollLine
    }()
    
    //MARK:懒加载lable数组
    private lazy var titleLabels : [UILabel] =  [UILabel]()
    
    //MARK:-自定义构造函数
    init(frame: CGRect , titles : [String]) {
        
        self.titles = titles

        
        super.init(frame: frame)
        
        //设置UI界面
        createUI()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

//MARK:设置UI界面
extension MXPageTitleView {

    private func createUI () {
    
        //1.添加scrollView
        addSubview(self.scrollView)
        
       //设置scrollView的frame
        self.scrollView.frame = bounds
        
        //2.添加lable
        setupTileLabel()
        
       //3.设置底部的线个滑块
        setupBottomLineAndIntidr()
    
    }
    
    //MARK:初始化label
    private func setupTileLabel () {
     
        
        //3.设置frame
        
        let labeleW : CGFloat = frame.size.width / CGFloat(titles.count)
        
        let lableH : CGFloat = frame.size.height - CGFloat(kIndeiterH)
        
       
        let lableY  : CGFloat = 0
        
        //这种遍历方法 既可以拿到下标也可以拿到文字
        for (index , title) in titles.enumerate() {
            
            //1.创建label
            let lable = UILabel()
            
            
            //2.设置label的属性
            
            lable.textColor = UIColor.darkGrayColor()
            
            lable.font = UIFont.systemFontOfSize(16)
            
            lable.textAlignment = .Center

            lable.text = title
            
            lable.tag  = index
            
            let labelX : CGFloat = CGFloat(index) * labeleW
            
            lable.frame = CGRect(x: labelX, y: lableY, width: labeleW, height: lableH)
            
            
            scrollView.addSubview(lable)
            
            titleLabels.append(lable)
            
        }
        
    
    }
    
    private func setupBottomLineAndIntidr (){
    
        let bottomLine = UIView()
        
        bottomLine.backgroundColor = UIColor.lightGrayColor()
        
        //设置frame
        let bottomLineY = frame.size.height - bottomLineH
        
        bottomLine.frame = CGRect(x: 0, y: bottomLineY, width: frame.size.width, height: bottomLineH)
        
        addSubview(bottomLine)
        
        //添加滑块
        guard let fisrtLable = titleLabels.first else {return}
        
        fisrtLable.textColor = UIColor.orangeColor()
        
        scrollView.addSubview(scrollLine)
        
        //设置frame
        scrollLine.frame = CGRect(x: fisrtLable.frame.origin.x, y: frame.size.height - kIndeiterH, width: fisrtLable.frame.size.width, height: kIndeiterH)
    
    }

}
 