//
//  ViewController.swift
//  Calculating
//
//  Created by Sam Camp on 2/12/18.
//  Copyright © 2018 Sam Camp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var FirstOperand = 0.0
    var currentOperator = ""
    
    var UserTyping = false
    
    @IBAction func numberOne(_ sender: UIButton) {
        
        //Takes value of name of button pressed
        let Pressed = sender.currentTitle!
        
        //Tells if the user is typing out a new number or continuing to type out the same number
        if UserTyping == false {
            Display.text = Pressed
        }
        else {
            Display.text =  Display.text! + Pressed
        }
        UserTyping = true
    }
    
    @IBAction func ClearDisplay(_ sender: UIButton) {
        //Sets display value to 0
        Display.text = "0"
        //Gets rid of the display value
        UserTyping = false
    }
    
    @IBOutlet weak var Display: UILabel!
    
    @IBAction func Plus(_ sender: UIButton) {
        FirstOperand = Double(Display.text!)!
        currentOperator = "+"
        UserTyping = false
    }
    
    @IBAction func Equals(_ sender: UIButton) {
        //Resets value of result
        var result = 0.0
        let secondOperand = Double(Display.text!)!
        switch currentOperator {
        case "+":
            result = FirstOperand + secondOperand
        case "-":
            result = FirstOperand - secondOperand
        case "×":
            result = FirstOperand * secondOperand
        case "÷":
            result = FirstOperand / secondOperand
        default:
            result = secondOperand
        }
        Display.text = String(result)
        UserTyping = false
    }
    @IBAction func Minus(_ sender: UIButton) {
        FirstOperand = Double(Display.text!)!
        currentOperator = "-"
        UserTyping = false
    }
    
    @IBAction func Multiply(_ sender: UIButton) {
        FirstOperand = Double(Display.text!)!
        currentOperator = "×"
        UserTyping = false
    }
    
    @IBAction func Divide(_ sender: UIButton) {
        FirstOperand = Double(Display.text!)!
        currentOperator = "÷"
        UserTyping = false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

