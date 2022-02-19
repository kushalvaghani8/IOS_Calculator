//
//  ViewController.swift
//  caclulator_1
//
//  Created by Kushal Vaghani on 18/02/2022.
//

import UIKit

class ViewController: UIViewController {
    var number = 0.0
    var number2 = 0.0
    var result = 0.0
    var operation = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var lblResult: UILabel!
    
    @IBOutlet weak var lblPastCalculations: UILabel!
    
    @IBAction func btnClear(_ sender: Any) {
        lblResult.text = ""
        lblPastCalculations.text = ""
    }
    
    @IBAction func btnSign(_ sender: Any) {
        if lblResult.text == "0" || lblResult.text == "" {
            lblResult.text = lblResult.text
        }
        else if !lblResult.text!.contains("-") {
            lblResult.text!.insert( "-", at: lblResult.text!.startIndex)
        }
        else {
            lblResult.text?.remove(at: lblResult.text!.startIndex)
        }
        
    }
    @IBAction func btnPercent(_ sender: Any) {
        
    }
    @IBAction func btnDivide(_ sender: Any) {
        operation = "÷"
        operationButton()
    }
    
    @IBAction func btnMultiply(_ sender: Any) {
        operation = "*"
        operationButton()
    }
    
    @IBAction func btnSubtract(_ sender: Any) {
        operation = "-"
      operationButton()
    }
    @IBAction func btnAdd(_ sender: Any) {
        operation = "+"
       operationButton()
    }
    
    func operationButton() {
        number = Double(lblResult.text!)!
        lblPastCalculations.text!.append(lblResult.text!)
        lblPastCalculations.text!.append(operation)
        lblResult.text = ""
    }
    
    @IBAction func btnEqual(_ sender: Any) {
        if lblResult.text != "" {
            
            number2 = Double(lblResult.text!)!
            
            switch operation {
            case "÷":
                result = Double(number / number2)
                textAppend()
                
            case "*":
                result = Double(number * number2)
                textAppend()
            case "+":
                result = Double(number + number2)
                textAppend()
            case "-":
                result = Double(number - number2)
                textAppend()
                
            default:
                lblResult.text = "0"
            }
            
            func textAppend(){
                lblPastCalculations.text!.append(lblResult.text!)
                lblPastCalculations.text!.append("=")
                lblResult.text = result.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", result) : String(result)
                lblPastCalculations.text!.append(lblResult.text! + ",")
                
            }
            
           
        }
    }
   
    
    @IBAction func btnMemory(_ sender: Any) {
        
    }
    
    @IBAction func btnDot(_ sender: Any) {
        if lblResult.text!.isEmpty {
            lblResult.text = "0."
        }
        else if ((lblResult.text!.contains("."))) {
            lblResult.text = lblResult.text
        }
        else {
            lblResult.text = lblResult.text! + "."
        }
    }
    
    @IBAction func btnZero(_ sender: Any){
        if lblResult.text == "0" {
            
        }
        else {
            lblResult.text = lblResult.text?.appending("0")
        }
    }
    @IBAction func btnOne(_ sender: Any){
        if lblResult.text == "0" {
            lblResult.text = "1"
        }
        else {
            lblResult.text = lblResult.text?.appending("1")
        }
    }
    @IBAction func btnTwo(_ sender: Any){
        if lblResult.text == "0" {
            lblResult.text = "2"
         
        }
        else {
            lblResult.text = lblResult.text?.appending("2")
        }
    }
    @IBAction func btnThree(_ sender: Any) {
        if lblResult.text == "0" {
            lblResult.text = "3"
         
        }
        else {
            lblResult.text = lblResult.text?.appending("3")
        }
    }
    @IBAction func btnFour(_ sender: Any) {
        if lblResult.text == "0" {
            lblResult.text = "4"
         
        }
        else {
            lblResult.text = lblResult.text?.appending("4")
        }
    }
    @IBAction func btnFive(_ sender: Any) {
        if lblResult.text == "0" {
            lblResult.text = "5"
          
        }
        else {
            lblResult.text = lblResult.text?.appending("5")
        }
    }
    @IBAction func btnSix(_ sender: Any) {
        if lblResult.text == "0" {
            lblResult.text = "6"
        }
        else {
            lblResult.text = lblResult.text?.appending("6")
        }
    }
    @IBAction func btnSeven(_ sender: Any) {
        if lblResult.text == "0" {
            lblResult.text = "7"
        }
        else {
            lblResult.text = lblResult.text?.appending("7")
        }
    }
    @IBAction func btnEight(_ sender: Any) {
        if lblResult.text == "0" {
            lblResult.text = "8"
        }
        else {
            lblResult.text = lblResult.text?.appending("8")
        }
    }
    @IBAction func btnNine(_ sender: Any) {
        if lblResult.text == "0" {
            lblResult.text = "9"
        }
        else {
            lblResult.text = lblResult.text?.appending("9")
        }
    }
    
}

