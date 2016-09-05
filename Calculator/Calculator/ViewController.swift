//
//  ViewController.swift
//  Calculator
//
//  Created by Raúl Torres Duque Vázquez Aldana on 13/02/16.
//  Copyright © 2016 Raúl Torres Duque Vázquez Aldana. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTypingANumber = false

    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTypingANumber {
            display.text = display.text! + digit
        } else{
            display.text = digit
            userIsInTheMiddleOfTypingANumber = true
        }
    }

    @IBAction func operate(sender: UIButton) {
        let operation = sender.currentTitle!
        if userIsInTheMiddleOfTypingANumber{
            print("operation = \(operation)")
            enter()
        }
        switch operation{
            case "✕": performOperation { $0 * $1 }
            case "÷": performOperation { $1 / $0 }
            case "+": performOperation { $0 + $1 }
            case "−": performOperation { $1 / $0 }
            case "√": performOperation_one { sqrt($0)}
            case "sin": performOperation_one { __sinpi($0)}
            case "cos": performOperation_one { __cospi($0)}
            default: break
        }
        
        
        
    }
    
    func performOperation(operation: (Double, Double) -> Double) {
        if operandStack.count >= 2 {
            displayValue = operation(operandStack.removeLast(), operandStack.removeLast())
            enter()
        }
    }
    
    func performOperation_one(operation: Double -> Double) {
        if operandStack.count >= 1 {
            displayValue = operation(operandStack.removeLast())
            enter()
        }
    }
    
    var operandStack = Array<Double>()
    
    @IBAction func enter() {
        userIsInTheMiddleOfTypingANumber = false
        operandStack.append(displayValue)
        print("operandStack = \(operandStack)")
    }
    
    var displayValue: Double {
        get{
            return NSNumberFormatter().numberFromString(display.text!)!.doubleValue
        }
        set{
            display.text = "\(newValue)"
            userIsInTheMiddleOfTypingANumber = false
        }
    }
}

