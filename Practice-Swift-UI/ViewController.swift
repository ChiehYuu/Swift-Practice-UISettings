//
//  ViewController.swift
//  Practice-Swift-UI
//
//  Created by Jay Shih on 2017/1/3.
//  Copyright © 2017年 Jay Shih. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //***** 測定見面的長寬高 *****//
        
        print(view.frame.size.width)
        print(view.frame.size.height)
        
        //***** 用程式碼產生一個UILabel *****//
        
        //產生一個標籤
        let myLabel = UILabel(frame: CGRect(x:100 ,y:550, width:300, height:60 ))
        //設定標籤字型大小
        myLabel.font = UIFont(name:"Arial", size: 26.0 )
        //設定標籤文字顏色
        myLabel.textColor = UIColor.magenta
        //設定標籤文字內容
        myLabel.text = "Swift is Excellent."
        //設定標籤文字的對齊方式(left/right/center)
        myLabel.textAlignment = .left
        //將標籤加到畫面上
        view.addSubview(myLabel)
        
        //***** 用程式碼叫UIButton *****//
        
        // 1.產生一個文字的UIButton
        
        //產生按鈕
        let newButton = UIButton(type: .system)
        //設定按鈕位置
        newButton.frame = CGRect(x: 207, y:368, width: 125, height: 125)
        //設定按鈕文字
        newButton.setTitle("Test", for: .normal)
        //設定按鈕文字大小
        newButton.titleLabel?.font = UIFont(name:"Helvetica", size: 28.0)
        //設定按鈕按下文字
        newButton .setTitle("Testing", for: .highlighted)
        //加入按鈕到畫面上
        view.addSubview(newButton)
        //按鈕按下的提示
        newButton.addTarget(self, action: #selector(ViewController.hitMe(_:)), for: .touchUpInside)
      
        // 2.產生一個圖形的UIButton 
        
        //產生按鈕
        let newImageButton = UIButton(type: .custom)
        //設定按鈕位置
        newImageButton.frame = CGRect(x:100, y:100, width:100, height:100)
        //設定圖片成為按鈕
        newImageButton.setImage(#imageLiteral(resourceName: "PlayButton"), for: .normal)
        //設定圖片成為按下的按鈕
        newImageButton.setImage(#imageLiteral(resourceName: "PlayButtonPressed"), for: .highlighted)
        //加入按鈕到畫面上
        view.addSubview(newImageButton)
        //按下按鈕的提示
        newImageButton.addTarget(self, action: #selector(ViewController.hitMe2(_:)), for: .touchUpInside)
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func hitMe(_ button:UIButton){
        print("new button pressed")
    }
    
    func hitMe2(_ button:UIButton){
        print("new Image Button pressed")
    }


}

