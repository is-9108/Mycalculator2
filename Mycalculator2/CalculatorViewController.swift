//
//  CalculatorViewController.swift
//  Mycalculator2
//
//  Created by Shota Ishii on 2020/09/03.
//  Copyright © 2020 is. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return list.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return list[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        baceNumberSelectTF.text = list[row]
        
    }
    
    func creatPickerView(){
        pickerView.delegate = self
        baceNumberSelectTF.inputView = pickerView
        //toolbar
        let toolbar = UIToolbar()
        toolbar.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 44)
        let doneButtonItem = UIBarButtonItem(barButtonSystemItem: .done
            , target: self, action: #selector(donePicker))
        toolbar.setItems([doneButtonItem], animated: true)
        baceNumberSelectTF.inputAccessoryView = toolbar
    }
    
    @objc func donePicker(){
        baceNumberSelectTF.endEditing(true)
        if baceNumberSelectTF.text == ""{
            fifteenButton.isEnabled = false
            fourteenButton.isEnabled = false
            thirteenButton.isEnabled = false
            twelveButton.isEnabled = false
            elevenButton.isEnabled = false
            tenButton.isEnabled = false
            nineButton.isEnabled = false
            eightButton.isEnabled = false
            sevenButton.isEnabled = false
            sixButton.isEnabled = false
            fiveButton.isEnabled = false
            fourButton.isEnabled = false
            threeButton.isEnabled = false
            twoButton.isEnabled = false
            oneButton.isEnabled = false
            zeroButton.isEnabled = false
        }else if baceNumberSelectTF.text == "2進数"{
            fifteenButton.isEnabled = false
            fourteenButton.isEnabled = false
            thirteenButton.isEnabled = false
            twelveButton.isEnabled = false
            elevenButton.isEnabled = false
            tenButton.isEnabled = false
            nineButton.isEnabled = false
            eightButton.isEnabled = false
            sevenButton.isEnabled = false
            sixButton.isEnabled = false
            fiveButton.isEnabled = false
            fourButton.isEnabled = false
            threeButton.isEnabled = false
            twoButton.isEnabled = false
            oneButton.isEnabled = true
            zeroButton.isEnabled = true
        }else if baceNumberSelectTF.text == "8進数"{
            fifteenButton.isEnabled = false
            fourteenButton.isEnabled = false
            thirteenButton.isEnabled = false
            twelveButton.isEnabled = false
            elevenButton.isEnabled = false
            tenButton.isEnabled = false
            nineButton.isEnabled = false
            eightButton.isEnabled = false
            sevenButton.isEnabled = true
            sixButton.isEnabled = true
            fiveButton.isEnabled = true
            fourButton.isEnabled = true
            threeButton.isEnabled = true
            twoButton.isEnabled = true
            oneButton.isEnabled = true
            zeroButton.isEnabled = true
        }else if baceNumberSelectTF.text == "10進数"{
            fifteenButton.isEnabled = false
            fourteenButton.isEnabled = false
            thirteenButton.isEnabled = false
            twelveButton.isEnabled = false
            elevenButton.isEnabled = false
            tenButton.isEnabled = false
            nineButton.isEnabled = true
            eightButton.isEnabled = true
            sevenButton.isEnabled = true
            sixButton.isEnabled = true
            fiveButton.isEnabled = true
            fourButton.isEnabled = true
            threeButton.isEnabled = true
            twoButton.isEnabled = true
            oneButton.isEnabled = true
            zeroButton.isEnabled = true
        }else if baceNumberSelectTF.text ==  "16進数"{
            fifteenButton.isEnabled = true
            fourteenButton.isEnabled = true
            thirteenButton.isEnabled = true
            twelveButton.isEnabled = true
            elevenButton.isEnabled = true
            tenButton.isEnabled = true
            nineButton.isEnabled = true
            eightButton.isEnabled = true
            sevenButton.isEnabled = true
            sixButton.isEnabled = true
            fiveButton.isEnabled = true
            fourButton.isEnabled = true
            threeButton.isEnabled = true
            twoButton.isEnabled = true
            oneButton.isEnabled = true
            zeroButton.isEnabled = true
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        baceNumberSelectTF.endEditing(true)
    }
    //textField設定
    @IBOutlet weak var baceNumberSelectTF: UITextField!
    var pickerView: UIPickerView = UIPickerView()
    let list = ["", "2進数", "8進数", "10進数", "16進数"]
    
    
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
        
    var firstDouble = 0.0
    var firstInteger = 0
    var resltDouble = 0.0
    var resultInteger = 0
    var process = ""
    
    var mode = true
    var ope = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        creatPickerView()
        resultLabel.text = "0"
        
        fifteenButton.isEnabled = false
        fourteenButton.isEnabled = false
        thirteenButton.isEnabled = false
        twelveButton.isEnabled = false
        elevenButton.isEnabled = false
        tenButton.isEnabled = false
        nineButton.isEnabled = false
        eightButton.isEnabled = false
        sevenButton.isEnabled = false
        sixButton.isEnabled = false
        fiveButton.isEnabled = false
        fourButton.isEnabled = false
        threeButton.isEnabled = false
        twoButton.isEnabled = false
        oneButton.isEnabled = false
        zeroButton.isEnabled = false
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
        firstInteger = 0
        firstDouble = 0.0
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
//        if baceNumberSelectTF.text == "10進数"{
//            resultLabel.text = "\(firstDouble)"
//        }else{
//            resultLabel.text = "\(firstInteger)"
//        }
    }
    @IBAction func mulButton(_ sender: Any) {
        if resultLabel.text != "0"{
            calculation()
        }
        ope = "×"

        mode = false

//        if baceNumberSelectTF.text == "10進数"{
//            resultLabel.text = "\(firstDouble)"
//        }else{
//            resultLabel.text = "\(firstInteger)"
//        }
    }
    @IBAction func subButton(_ sender: Any) {
        if resultLabel.text != "0"{
            calculation()
        }
        ope = "-"
        mode = false
//        if baceNumberSelectTF.text == "10進数"{
//            resultLabel.text = "\(firstDouble)"
//        }else{
//            resultLabel.text = "\(firstInteger)"
//        }
    }
    @IBAction func addButton(_ sender: Any) {
        if resultLabel.text != "0"{
            calculation()
        }
        ope = "+"
        mode = false
//        if baceNumberSelectTF.text == "10進数"{
//            resultLabel.text = "\(firstDouble)"
//        }else{
//            resultLabel.text = "\(firstInteger)"
//        }
    }
    @IBAction func equalButton(_ sender: Any) {
        //数字ボタンを押せなくする
        
        
        
        
        
        
        mode = false
        calculation()
        firstInteger = 0
        firstDouble = 0.0
    }
    
    func calculation() {
        var changeNum = ""
        var result = ""
        var resultNumber = ""
        if baceNumberSelectTF.text == "2進数"{
            result = tenToTwo(number: resultLabel.text!)
            changeNum = twoToTen(number: resultLabel.text!)
            print("result: \(result)")
            print("changeNum\(changeNum)")
        }else if baceNumberSelectTF.text == "8進数"{
            result = tenToEight(number: resultLabel.text!)
        }else if baceNumberSelectTF.text == "10進数"{
            result = resultLabel.text!
        }else if baceNumberSelectTF.text == "16進数"{
            result = tenToSixteen(number: resultLabel.text!)
        }
        if ope == ""{
            process = resultLabel.text!
            operatorLabel.text = process
            if baceNumberSelectTF.text == "10進数"{
                firstDouble += Double(result)!
            }else{
                firstInteger += Int(result)!
            }
            
        }
        if ope == "+" {
            if resultLabel.text == "0"{
                process += resultLabel.text!
            }else{
                process += "+\(resultLabel.text!)"
            }
            operatorLabel.text = process
            if baceNumberSelectTF.text == "10進数"{
                firstDouble += Double(result)!
            }else{
                firstInteger += Int(result)!
            }
//            switch resultLabel.text {
//            case "2進数":
//                resultNumber = twoToTen(number: String(firstInteger))
//            case "8進数":
//                resultNumber = eightToTen(number: String(firstInteger))
//            case "16進数":
//                resultNumber = sixteenToTen(number: String(firstInteger))
//            default:
//                print("error")
//                return
//            }
        }else if ope == "-" {
            if resultLabel.text == "0"{
                process += resultLabel.text!
            }else{
                process += "-\(resultLabel.text!)"
            }
            operatorLabel.text = process
            mode = false
            if baceNumberSelectTF.text == "10進数"{
                firstDouble -= Double(result)!
//                resultLabel.text = "\(firstDouble)"
            }else{
                //変換
                firstInteger -= Int(result)!
//                resultLabel.text = "\(firstInteger)"
            }
//            switch resultLabel.text {
//            case "2進数":
//                resultNumber = twoToTen(number: String(firstInteger))
//            case "8進数":
//                resultNumber = eightToTen(number: String(firstInteger))
//            case "16進数":
//                resultNumber = sixteenToTen(number: String(firstInteger))
//            default:
//                print("error")
//                return
//            }
            
        }else if ope == "×" {
            if resultLabel.text == "0"{
                process += resultLabel.text!
            }else{
                process += "×\(resultLabel.text!)"
            }
            operatorLabel.text = process
            mode = false
            if baceNumberSelectTF.text == "10進数"{
                firstDouble *= Double(result)!
                resultLabel.text = "\(firstDouble)"
            }else{
                firstInteger *= Int(result)!
//                resultLabel.text = "\(firstInteger)"
            }
        }else if ope == "÷" {
            if resultLabel.text == "0"{
                process += resultLabel.text!
            }else{
                process += "÷\(resultLabel.text!)"
            }
            operatorLabel.text = process
            mode = false
            if baceNumberSelectTF.text == "10進数"{
                firstDouble /= Double(result)!
                resultLabel.text = "\(firstDouble)"
            }else{
                firstInteger /= Int(result)!
//                resultLabel.text = "\(firstInteger)"
            }
        }
        switch baceNumberSelectTF.text {
        case "2進数":
            resultNumber = twoToTen(number: String(firstInteger))
            resultLabel.text = resultNumber
        case "8進数":
            resultNumber = eightToTen(number: String(firstInteger))
            resultLabel.text = resultNumber
        case "10進数":
            resultLabel.text = String(firstDouble)
        case "16進数":
            resultNumber = sixteenToTen(number: String(firstInteger))
            resultLabel.text = resultNumber
        default:
            print("error")
            return
        }
        
    }
    
  
    
    @IBAction func changeButton(_ sender: Any) {
        //整数部を取得
        let result = Double(resultLabel.text!)!
        let integerNumber = Int(result)
        print(integerNumber)
        
        //小数点以下の文字列を取得
        let numString = resultLabel.text!
//        var demicalString = "0."
        print(numString)
        if numString.contains("."){
            let alert: UIAlertController = UIAlertController(title: "申し訳ありません", message: "小数点以下の数字の変換には対応していません", preferredStyle: UIAlertController.Style.alert)
            let confimAction: UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: {
                (action: UIAlertAction) -> Void in
                print("ok")
                return
            })
            alert.addAction(confimAction)
            present(alert,animated: true, completion: nil)
        }
//        else{
//            let array = Array(numString)
//            let num = Int(array.firstIndex(of: ".")!) + 1
//            for i in num..<array.count {
//                demicalString += String(array[i])
//            }
//            print(demicalString)
//        }
        
        
        let changeNumberVC = self.storyboard?.instantiateViewController(withIdentifier: "ChangeNumberViewController") as! ChangeNumberViewController
        changeNumberVC.number = result
        changeNumberVC.integerNumber = integerNumber
//        changeNumberVC.decimalNumber = Double(demicalString)!
        changeNumberVC.mode = baceNumberSelectTF.text!
        self.present(changeNumberVC,animated: true, completion: nil)
    }
    
    func tenToTwo(number:String) -> String{
        var tenNum = Int(number)!
        var base = 1
        var result = 0
        while(tenNum > 0){
            result = result + (tenNum % 10) * base
            tenNum /= 10
            base *= 2
        }
        return String(result)
    }
    
    func twoToTen(number: String) -> String{
        var twoNum = Int(number)!
        var base = 1
        var result = 0
        while(twoNum > 0){
            result = result + (twoNum % 2) * base
            twoNum /= 2
            base *= 10
        }
        return String(result)
    }
    
    func tenToEight(number:String) -> String{
        var tenNum = Int(number)!
        var base = 1
        var result = 0
        while(tenNum > 0){
            result = result + (tenNum % 10) * base
            tenNum /= 10
            base *= 8
        }
        return String(result)
    }
    
    func eightToTen(number:String) -> String{
        var eightNum = Int(number)!
        var base = 1
        var result = 0
        while(eightNum > 0){
            result = result + (eightNum % 8) * base
            eightNum /= 8
            base *= 10
        }
        return String(result)
    }
    
    func tenToSixteen(number:String) -> String{
        var tenNum = Int(number)!
        var result = String(tenNum,radix: 16)
        return result
    }
    
    func sixteenToTen(number:String) -> String{
        var sixteenNum = Int(number,radix: 16)!
        return String(sixteenNum)
    }
    
    
}

