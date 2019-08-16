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
        let button1 = UIButton() // ボタン"button1"を宣言
        let button2 = UIButton() // ボタン"button2"を宣言
        
        // ラベルの大きさ
        label.frame = CGRect(x: 120, y: 285, width: 125, height: 120) // ラベルの位置、大きさ指定
        
        // ラベルのテキスト
        label.text = "テキスト1\nテキスト2\nテキスト3" // テキストの表示内容
        label.textColor = UIColor.green // テキストの色指定
        label.textAlignment = NSTextAlignment.center // テキストの位置指定
        label.numberOfLines = 0 // 最大で何行のテキストを表示できるか指定 0で無限 1以上で指定行
        
        // ラベルの背景
        label.backgroundColor = UIColor.orange // ラベルの背景色指定
        
        // ラベルの枠線
        label.layer.borderColor = UIColor.blue.cgColor// 枠線の色指定
        label.layer.borderWidth = 10 // 枠線の太さ指定
        
        // ラベルの角丸指定
        label.layer.masksToBounds = true // 角丸にした部分のはみ出し許可 false:はみ出し可 true:はみ出し不可
        label.layer.cornerRadius = 10.0 // ラベルの箱の角の丸み半径指定　角丸半径
        
        
        // ボタン1
        button1.frame = CGRect(x: 120, y: 485, width: 125, height: 60) // ボタン1の位置、大きさ指定
        button1.backgroundColor = UIColor.green // ボタン1の背景色指定
        
        button1.setTitle("おしてね1", for: .normal) // ボタン1の文字
        button1.addTarget(self, action: #selector(pushButton1), for: .touchUpInside) // ボタン1を押した時の動作指定
        
        
        // ボタン2
        button2.frame = CGRect(x: 120, y: 605, width: 125, height: 60) // ボタン2の位置、大きさ指定
        button2.backgroundColor = UIColor.green // ボタン2の背景色指定
        
        button2.setTitle("おしてね2", for: .normal) // ボタン2の文字
        button2.addTarget(self, action: #selector(pushButton2), for: .touchUpInside) // ボタン2を押した時の動作指定
        
        
        // ビューに描画
        self.view.addSubview(label) // ラベルをビューに表示
        self.view.addSubview(button1) // ボタン1をビューに表示
        self.view.addSubview(button2) // ボタン1をビューに表示
        self.view.backgroundColor = UIColor.cyan // ビューの背景色指定
        
    }

    @objc func pushButton1(sender: UIButton){ // @objcはobject-Cのことらしい
        print("ボタン1が押されたよ")
        self.performSegue(withIdentifier: "toSecondView", sender: nil)
    }
    
    @objc func pushButton2(sender: UIButton){ // @objcはobject-Cのことらしい
        print("ボタン2が押されたよ")
        self.performSegue(withIdentifier: "toThirdView", sender: nil)
    }


}

