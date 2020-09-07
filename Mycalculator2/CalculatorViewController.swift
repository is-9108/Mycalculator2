//
//  CalculatorViewController.swift
//  Mycalculator2
//
//  Created by Shota Ishii on 2020/09/03.
//  Copyright © 2020 is. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var baceNumberSelectTF: UITextField!
    
    //result
    @IBOutlet weak var resultLabel: UILabel!
    
    //operator
    @IBOutlet weak var operatorLabel: UILabel!
    
    //number
    @IBOutlet weak var fifteenButton: UIButton!
    @IBOutlet weak var fourteenButton: UIButton!
    @IBOutlet weak var thirteenButton: UIButton!
    @IBOutlet weak var twelveButton: UIButton!
    @IBOutlet weak var elevenButton: UIButton!
    @IBOutlet weak var tenButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
        
    var firstNumber = 0.0
//    var secondNumber = 0
    var resltNumber = 0.0
    var process = ""
    
    var mode = true
    var ope = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = "0"
    }
    
    //number
    @IBAction func fifteen(_ sender: Any) {
        if mode {
            if resultLabel.text == "0" {
                resultLabel.text = "F"
            }else {
                resultLabel.text! += "F"
            }
        }
    }
    @IBAction func fourteen(_ sender: Any) {
        if mode {
            if resultLabel.text == "0" {
                resultLabel.text = "E"
            }else {
                resultLabel.text! += "E"
            }
        }
    }
    @IBAction func thirteen(_ sender: Any) {
        if mode {
            if resultLabel.text == "0" {
                resultLabel.text = "D"
            }else {
                resultLabel.text! += "D"
            }
        }
    }
    @IBAction func twelve(_ sender: Any) {
        if mode {
            if resultLabel.text == "0"{
                resultLabel.text = "C"
            }else{
                resultLabel.text! += "C"
            }
        }
    }
    @IBAction func eleven(_ sender: Any) {
        if mode {
            if resultLabel.text == "0" {
                resultLabel.text = "B"
            }else {
                resultLabel.text! += "B"
            }
        }
    }
    @IBAction func ten(_ sender: Any) {
        if mode {
            if resultLabel.text == "0" {
                resultLabel.text = "A"
            }else {
                resultLabel.text! += "A"
            }
        }
    }
    @IBAction func nine(_ sender: Any) {
        if mode {
            if resultLabel.text == "0" {
                resultLabel.text = "9"
            }else {
                resultLabel.text! += "9"
            }
        }else{
            resultLabel.text! = "9"
            mode = true
        }
    }
    @IBAction func eight(_ sender: Any) {
        if mode {
            if resultLabel.text == "0" {
                resultLabel.text = "8"
            }else {
                resultLabel.text! += "8"
            }
        }else{
            resultLabel.text! = "8"
            mode = true
        }
    }
    @IBAction func seven(_ sender: Any) {
        if mode {
            if resultLabel.text == "0" {
                resultLabel.text = "7"
            }else {
                resultLabel.text! += "7"
            }
        }else{
            resultLabel.text! = "7"
            mode = true
        }
    }
    @IBAction func six(_ sender: Any) {
        if mode {
            if resultLabel.text == "0" {
                resultLabel.text = "6"
            }else {
                resultLabel.text! += "6"
            }
        }else{
            resultLabel.text! = "6"
            mode = true
        }
    }
    @IBAction func five(_ sender: Any) {
        if mode {
            if resultLabel.text == "0" {
                resultLabel.text = "5"
            }else {
                resultLabel.text! += "5"
            }
        }else {
            resultLabel.text! = "5"
        }
    }
    @IBAction func four(_ sender: Any) {
        if mode {
            if resultLabel.text == "0" {
                resultLabel.text = "4"
            }else {
                resultLabel.text! += "4"
            }
        }else {
            resultLabel.text! = "4"
            mode = true
        }
    }
    @IBAction func three(_ sender: Any) {
        if mode {
            if resultLabel.text == "0" {
                resultLabel.text = "3"
            }else {
                resultLabel.text! += "3"
            }
        }else {
            resultLabel.text! = "3"
            mode = true
        }
    }
    @IBAction func two(_ sender: Any) {
        if mode {
            if resultLabel.text == "0" {
                resultLabel.text = "2"
            }else {
                resultLabel.text! += "2"
            }
        }else {
            resultLabel.text! = "2"
            mode = true
        }
    }
    @IBAction func one(_ sender: Any) {
        if mode {
            if resultLabel.text == "0" {
                resultLabel.text = "1"
            }else {
                resultLabel.text! += "1"
            }
        }else {
            resultLabel.text! = "1"
            mode = true
        }
    }
    @IBAction func zero(_ sender: Any) {
        if mode {
            if resultLabel.text == "0" {
                resultLabel.text = "0"
            }else {
                resultLabel.text! += "0"
            }
        }else {
            resultLabel.text! = "0"
            mode = true
        }
    }
    @IBAction func point(_ sender: Any) {
        resultLabel.text! += "."
    }
    
    //symbol
    @IBAction func ACButton(_ sender: Any) {
        resultLabel.text! = "0"
        firstNumber = 0
        mode = true
        operatorLabel.text = ""
        process = ""
        ope = ""
    }
    @IBAction func divButton(_ sender: Any) {
        if resultLabel.text != "0"{
            calculation()
        }
        ope = "÷"

        mode = false

        resultLabel.text = "\(firstNumber)"
    }
    @IBAction func mulButton(_ sender: Any) {
        if resultLabel.text != "0"{
            calculation()
        }
        ope = "×"

        mode = false

        resultLabel.text = "\(firstNumber)"
    }
    @IBAction func subButton(_ sender: Any) {
        if resultLabel.text != "0"{
            calculation()
        }
        ope = "-"
        mode = false
        resultLabel.text = "\(firstNumber)"
    }
    @IBAction func addButton(_ sender: Any) {
        if resultLabel.text != "0"{
            calculation()
        }
        ope = "+"
        mode = false
        resultLabel.text = "\(firstNumber)"
    }
    @IBAction func equalButton(_ sender: Any) {
        //数字ボタンを押せなくする
        
        
        
        
        
        
        mode = false
        calculation()
        firstNumber = 0
    }
    
    func calculation() {
        if ope == ""{
            process = resultLabel.text!
            operatorLabel.text = process
            firstNumber += Double(resultLabel.text!)!
        }
        if ope == "+" {
            if resultLabel.text == "0"{
                process += resultLabel.text!
            }else{
                process += "+\(resultLabel.text!)"
            }
            operatorLabel.text = process
            firstNumber += Double(resultLabel.text!)!
        }else if ope == "-" {
            if resultLabel.text == "0"{
                process += resultLabel.text!
            }else{
                process += "-\(resultLabel.text!)"
            }
            operatorLabel.text = process
            mode = false
            firstNumber -= Double(resultLabel.text!)!
            resultLabel.text = "\(firstNumber)"
        }else if ope == "×" {
            if resultLabel.text == "0"{
                process += resultLabel.text!
            }else{
                process += "×\(resultLabel.text!)"
            }
            operatorLabel.text = process
            mode = false
            firstNumber *= Double(resultLabel.text!)!
            resultLabel.text = "\(firstNumber)"
        }else if ope == "÷" {
            if resultLabel.text == "0"{
                process += resultLabel.text!
            }else{
                process += "÷\(resultLabel.text!)"
            }
            operatorLabel.text = process
            mode = false
            firstNumber /= Double(resultLabel.text!)!
            resultLabel.text = "\(firstNumber)"
        }
        resultLabel.text = "\(firstNumber)"
    }
    
  
    
    @IBAction func changeButton(_ sender: Any) {
        //整数部を取得
        let result = Double(resultLabel.text!)!
        let integerNumber = Int(result)
        print(integerNumber)
        
        //小数点以下の文字列を取得
        let numString = resultLabel.text!
        var demicalString = "0."
        let array = Array(numString)
        let num = Int(array.firstIndex(of: ".")!) + 1
        for i in num..<array.count {
            demicalString += String(array[i])
        }
        print(demicalString)
        
        let changeNumberVC = self.storyboard?.instantiateViewController(withIdentifier: "ChangeNumberViewController") as! ChangeNumberViewController
        changeNumberVC.number = result
        changeNumberVC.integerNumber = integerNumber
        changeNumberVC.decimalNumber = Double(demicalString)!
        self.present(changeNumberVC,animated: true, completion: nil)
    }
}
