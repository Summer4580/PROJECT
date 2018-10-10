//
//  ViewController.swift
//  Com01
//
//  Created by 20161104580 on 2018/9/21.
//  Copyright © 2018年 20161104580. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var firstOperand: Double = 0.0   //第一操作数
    var secondOperand: Double = 0.0  //第二操作数
    var decimalPointFlag: Bool = false  //小数点
    var isSecond: Bool = false       //是否输入第二操作数
    var operatorFlag: String = ""    //操作符
    
    @IBOutlet weak var result: UILabel!
    var DisplayWindowAcknowledgement = false
    @IBAction func num(_ sender: AnyObject) {
        let num = sender.currentTitle
        if(DisplayWindowAcknowledgement){
            result.text = result.text! + num!!
        }else{
            result.text = num!
            if(num != "0"){
                DisplayWindowAcknowledgement = true
            }
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

