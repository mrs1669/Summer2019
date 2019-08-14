//
//  ViewController.swift
//  mySummer
//
//  Created by Takumi Muraishi on 2019/08/14.
//  Copyright © 2019 Takumi Muraishi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let label = UILabel() // ラベル"label"を宣言
        label.frame = CGRect(x: 150, y: 300, width: 65, height: 30) // ラベルの位置、大きさ指定
        label.text = "テキスト" // テキストの表示内容
        label.textColor = UIColor.green // テキストの色指定
        label.backgroundColor = UIColor.orange // ラベルの背景色指定
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 10.0 // ラベルの箱の角の丸み半径指定
        self.view.addSubview(label) // ラベルをビューに表示
        
        self.view.backgroundColor = UIColor.cyan // ビューの背景色指定
        
    }

    

}

