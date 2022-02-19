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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var lblResult: UILabel!
    
    @IBAction func btnClear(_ sender: Any) {
        lblResult.text = ""
    }
    
    @IBAction func btnSign(_ sender: Any) {
        
    }
    @IBAction func btnPercent(_ sender: Any) {
        
    }
    @IBAction func btnDivide(_ sender: Any) {
        
    }
    @IBAction func btnMultiply(_ sender: Any) {
    }
    
    @IBAction func btnSubtract(_ sender: Any) {
        
    }
    @IBAction func btnAdd(_ sender: Any) {
     
    }
    
    @IBAction func btnEqual(_ sender: Any) {
        number2 = Double(lblResult.text!)!
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
            number = Double(lblResult.text!)!
        }
        else {
            lblResult.text = lblResult.text?.appending("1")
        }
    }
    @IBAction func btnTwo(_ sender: Any){
        if lblResult.text == "0" {
            lblResult.text = "2"
            number = Double(lblResult.text!)!
        }
        else {
            lblResult.text = lblResult.text?.appending("2")
        }
    }
    @IBAction func btnThree(_ sender: Any) {
        if lblResult.text == "0" {
            lblResult.text = "3"
            number = Double(lblResult.text!)!
        }
        else {
            lblResult.text = lblResult.text?.appending("3")
        }
    }
    @IBAction func btnFour(_ sender: Any) {
        if lblResult.text == "0" {
            lblResult.text = "4"
            number = Double(lblResult.text!)!
        }
        else {
            lblResult.text = lblResult.text?.appending("4")
        }
    }
    @IBAction func btnFive(_ sender: Any) {
        if lblResult.text == "0" {
            lblResult.text = "5"
            number = Double(lblResult.text!)!
        }
        else {
            lblResult.text = lblResult.text?.appending("5")
        }
    }
    @IBAction func btnSix(_ sender: Any) {
        if lblResult.text == "0" {
            lblResult.text = "6"
            number = Double(lblResult.text!)!
        }
        else {
            lblResult.text = lblResult.text?.appending("6")
        }
    }
    @IBAction func btnSeven(_ sender: Any) {
        if lblResult.text == "0" {
            lblResult.text = "7"
            number = Double(lblResult.text!)!
        }
        else {
            lblResult.text = lblResult.text?.appending("7")
        }
    }
    @IBAction func btnEight(_ sender: Any) {
        if lblResult.text == "0" {
            lblResult.text = "8"
            number = Double(lblResult.text!)!
        }
        else {
            lblResult.text = lblResult.text?.appending("8")
        }
    }
    @IBAction func btnNine(_ sender: Any) {
        if lblResult.text == "0" {
            lblResult.text = "9"
            number = Double(lblResult.text!)!
        }
        else {
            lblResult.text = lblResult.text?.appending("9")
        }
    }
    
    
    
}

