//
//  ViewController.swift
//  TestProject
//
//  Created by everp2p on 2017/9/25.
//  Copyright © 2017年 TangLiHua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //定义三个整形变量a、b、c
    var a = Int()
    var b = Int()
    var c = Int()
    var label = UILabel()
    var textField1 = UITextField()
    var textField2 = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        label.frame = CGRect(x: 135 ,y: 80, width: 100, height: 40)
        label.backgroundColor = UIColor.red
        label.text = "0"
        self.view.addSubview(label)
        
        textField1.frame = CGRect(x: 50, y: 160, width: 100, height: 40)
        textField1.backgroundColor = UIColor.yellow
        textField1.text = "0"
        
        textField2.frame = CGRect(x:230, y: 160, width: 100, height: 40)
        textField2.backgroundColor = UIColor.yellow
        textField2.text = "0"
        
        self.view.addSubview(textField1)
        self.view.addSubview(textField2)
        
        let addBtn = UIButton()
        addBtn.frame = CGRect(x: 170, y: 160 ,width: 40, height: 40)
        addBtn.backgroundColor = UIColor.blue
        addBtn.setTitle("+", for: UIControlState.normal)
        addBtn.addTarget(self, action: #selector(add), for: UIControlEvents.touchUpInside)
        self.view.addSubview(addBtn)
        
        let subBtn = UIButton()
        subBtn.frame = CGRect(x: 170, y: 210 ,width: 40, height: 40)
        subBtn.backgroundColor = UIColor.blue
        subBtn.setTitle("-", for: UIControlState.normal)
        subBtn.addTarget(self, action: #selector(sub), for: UIControlEvents.touchUpInside)
        self.view.addSubview(subBtn)
        
        let mulBtn = UIButton()
        mulBtn.frame = CGRect(x: 170, y: 260 ,width: 40, height: 40)
        mulBtn.backgroundColor = UIColor.blue
        mulBtn.setTitle("*", for: UIControlState.normal)
        mulBtn.addTarget(self, action: #selector(mul), for: UIControlEvents.touchUpInside)
        self.view.addSubview(mulBtn)
        
        let divBtn = UIButton()
        divBtn.frame = CGRect(x: 170, y: 310 ,width: 40, height: 40)
        divBtn.backgroundColor = UIColor.blue
        divBtn.setTitle("/", for: UIControlState.normal)
        divBtn.addTarget(self, action: #selector(div), for: UIControlEvents.touchUpInside)
        self.view.addSubview(divBtn)
        
    }
    func add() {
        //第一个！是输入框的文字一定不会为空，输入框一个会输入一个值
        //第二个！转为Int类型之后也一定不为空，一定会有个数值，最后赋值给a
        a = Int(textField1.text!)! //textField1的值转为Int类型赋值给a
        b = Int(textField2.text!)!
        c = a + b
        print(c)
        label.text = String(c) //c的值转为String（字符串），再赋值给label的text属性
    }
    func sub() {
        a = Int(textField1.text!)! //textField1的值转为Int类型赋值给a
        b = Int(textField2.text!)!
        c = a - b
        print(c)
        label.text = String(c)
    }
    func mul() {
        a = Int(textField1.text!)! //textField1的值转为Int类型赋值给a
        b = Int(textField2.text!)!
        c = a * b
        print(c)
        label.text = String(c)
    }
    func div() {
        a = Int(textField1.text!)! //textField1的值转为Int类型赋值给a
        b = Int(textField2.text!)!
        if b == 0 {
            let alertController = UIAlertController(title:"提示", message:"除数不能为0",preferredStyle: .alert)
            let okAction = UIAlertAction(title:"好的", style: .default, handler:nil)
            alertController.addAction(okAction)
            self.present(alertController,animated: true, completion: nil)
        }else{
            c = a / b
        }
        print(c)
        label.text = String(c)
    }
 
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

