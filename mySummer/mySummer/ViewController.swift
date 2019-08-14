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
        label.text = "テキスト"
        label.textColor = UIColor.green
        label.backgroundColor = UIColor.orange
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 10.0
        self.view.addSubview(label)
        self.view.backgroundColor = UIColor.cyan
    }

    

}

