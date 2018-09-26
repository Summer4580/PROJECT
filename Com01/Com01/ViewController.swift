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
    
    
    @IBOutlet weak var display: UILabel!
    @IBOutlet weak var delete: UIButton!
    @IBOutlet weak var output: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var buttonAdd: UIButton!
    @IBOutlet weak var buttonSub: UIButton!
    @IBOutlet weak var buttonMult: UIButton!
    @IBOutlet weak var buttonDiv: UIButton!
    @IBOutlet weak var buttonPoint: UIButton!
    @IBOutlet weak var buttonDelAll: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

