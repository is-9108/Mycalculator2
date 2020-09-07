//
//  ChangeNumberViewController.swift
//  Mycalculator2
//
//  Created by Shota Ishii on 2020/09/05.
//  Copyright © 2020 is. All rights reserved.
//

import UIKit

class ChangeNumberViewController: UIViewController {
    
    var integerNumber = 0
    var decimalNumber = 0.0
    
    var number = 0.0
    var binaryNumber = 0
    var octalNumber = 0
    var hexadecimalNumber = ""

    //label
    @IBOutlet weak var binaryNumberLabel: UILabel!
    @IBOutlet weak var octalNumberLabel: UILabel!
    @IBOutlet weak var decimalNumberLabel: UILabel!
    @IBOutlet weak var hexadecimalLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeBinaryNumber(number: integerNumber)
        changeOctalNumber(number: integerNumber)
        changehexadecimalNumber(number: integerNumber)
        binaryNumberLabel.text = "\(binaryNumber)"
        octalNumberLabel.text = "\(octalNumber)"
        decimalNumberLabel.text = "\(number)"
        hexadecimalLabel.text = hexadecimalNumber
    }
    
    func changeBinaryNumber(number: Int){
        var decimal = number
        var binary = 0
        var base = 1
        
        while(decimal > 0){
            binary = binary + (decimal % 2) * base
            decimal = decimal / 2
            base = base * 10
        }

        binaryNumber = binary
    }
    func changeOctalNumber(number: Int){
        var decimal = number
        var octal = 0
        var base = 1
        
        while(decimal > 0){
            octal = octal + (decimal % 8) * base
            decimal = decimal / 8
            base = base * 10
        }

        octalNumber = octal
    }
   
    func changehexadecimalNumber(number: Int){
        var decimal = number
        var hexadecimal = 0
        var hexaString = ""
        var base = 1
        
        while(decimal > 0){
            hexadecimal = hexadecimal + (decimal % 16) * base
            decimal = decimal / 16
            base = base * 10
            switch hexadecimal {
            case 10:
                hexaString += "A"
                break
            case 11:
                hexaString += "B"
                break
            case 12:
                hexaString += "C"
                break
            case 13:
                hexaString += "D"
                break
            case 14:
                hexaString += "E"
                break
            case 15:
                hexaString += "F"
                break
            case 0:
                if hexaString == ""{
                    
                }else{
                    hexaString += "\(hexadecimal)"
                }
            default:
                hexaString += "\(hexadecimal)"
            }
        }

        hexadecimalNumber = hexaString
    }

    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
