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
    
    @IBAction func btnClear(_ sender: Any) { //clearing all fields
        lblResult.text = "0"
        lblPastCalculations.text = ""
        number = 0.0
        number2 = 0.0
        result = 0.0
        operation = ""
    }
    
    @IBAction func btnSign(_ sender: Any) { //adding ± if not already added or turning number to positive if negative
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
        operation = "%"
        operationButton()
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
    
    
    @IBAction func btnEqual(_ sender: Any) { // checking which operation to perform with a switch statement.
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
            case "%":
                result = calculatePercentage(value: number,percentage: number2)
                textAppend()
                
            default:
                lblResult.text = "0"
            }
            
            func textAppend(){ //print function for output after calculations
                lblPastCalculations.text!.append(lblResult.text!)
                lblPastCalculations.text!.append(" = ")
                excludeZero()
                lblPastCalculations.text!.append(lblResult.text! + ", ")
            }
            
             func calculatePercentage(value:Double,percentage:Double)->Double{ //function for percentage
                let val = number * number2
                return val / 100.0
            }
            
        }
        
        
    }
    
    
    @IBAction func btnBackSpace(_ sender: Any) { //removes the last character
        lblResult.text?.popLast()
    }
    
    @IBAction func btnSquareRoot(_ sender: Any) { //checks if its not zero if not gets squareroot of the number
        if lblResult.text == "" || lblResult.text == "0" {
            lblPastCalculations.text = "Please enter a number"
        }
        else {
        operation = "√"
        number = Double(lblResult.text!)!
        result = sqrt(number)
        lblResult.text = String(result)
        specialButton()
    }
    }
    
    @IBAction func btnxSquare(_ sender: Any) { //multiplies the number with itself)
        if lblResult.text == "" || lblResult.text == "0" {
            lblPastCalculations.text = "Please enter a number"
        }
        else {
        operation = "x^2"
        number = Double(lblResult.text!)!
            result =  (pow(number,2)) // formula for square
        lblResult.text = String(result)
        specialButton()
        }
    }
    
    @IBAction func btnxCube(_ sender: Any) { //multiplies itself three times
        if lblResult.text == "" || lblResult.text == "0" {
            lblPastCalculations.text = "Please enter a number"
        }
        else {
        operation = "x^3"
        number = Double(lblResult.text!)!
        result =  (pow(number,3)) //formula for cube calculation
        lblResult.text = String(result)
        specialButton()
        }
    }
    
    func specialButton(){ //repetative print statments for spcial buttons (√,x^2,x^3)
            lblPastCalculations.text!.append("\(operation) ")
            lblPastCalculations.text!.append(String(number))
            lblPastCalculations.text!.append(" = ")
            lblPastCalculations.text!.append(String(result))
            excludeZero()
    }
    
    func excludeZero(){ //function to exclude zero at the end
        lblResult.text = result.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", result) : String(result)
    }
    
    
    
    func operationButton() { // function for all the repetative code to print
        if lblResult.text != "0" || lblResult.text != "" {
            number = Double(lblResult.text!)!
            lblPastCalculations.text!.append(lblResult.text!)
            lblPastCalculations.text!.append(operation)
            lblResult.text = ""
        }
    }
    
   
    
    @IBAction func btnDot(_ sender: Any) { //adding "." only once
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
    
    @IBAction func btnZero(_ sender: Any){//checking to see if there is a zero and not print it multiple times
        if lblResult.text == "0" {
            lblResult.text = "0"
        }
        else {
            lblResult.text = lblResult.text?.appending("0")
        }
    }
    @IBAction func btnOne(_ sender: Any){ //avoiding to print zero before the number
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

