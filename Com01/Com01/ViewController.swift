//
//  ViewController.swift
//  Com01
//
//  Created by 20161104580 on 2018/9/21.
//  Copyright © 2018年 20161104580. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var text3: UITextField!
    @IBAction func ot(_ sender: Any) {
        text3.text = "\(Int(text1.text!)! + Int(text2.text!)!)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

