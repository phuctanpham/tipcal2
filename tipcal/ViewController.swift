//
//  ViewController.swift
//  tipcal
//
//  Created by Zet on 8/14/15.
//  Copyright (c) 2015 phuc.pt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isTypingNumber = false
    var firstNumber = 0
    var secondNumber = 0
    var operation = ""

    @IBOutlet weak var calculatorDisplay: UILabel!
    
    @IBAction func tipTapped(sender: AnyObject) {
        isTypingNumber = false
        var tip = sender.currentTitle!!
        var abc = calculatorDisplay.text!.toInt()!
        if tip == "10%" {
            abc = abc * 10 / 100
        } else if tip == "20%" {
            abc = abc * 20 / 100
        } else if tip == "30%" {
            abc = abc * 30 / 100
        }
        calculatorDisplay.text = "abc"
    }
    @IBOutlet weak var tipTapped: UIButton!



    
    @IBAction func numberTapped(sender: AnyObject) {
        var number = sender.currentTitle
        
        if isTypingNumber{
            calculatorDisplay.text = calculatorDisplay.text! + number!!
        } else {
            calculatorDisplay.text = number
            isTypingNumber = true
        }
    }
    @IBOutlet weak var numberTapped: UIButton!

    
    @IBAction func calculatorTapped(sender: AnyObject) {
        isTypingNumber = false
        firstNumber = calculatorDisplay.text!.toInt()!
        operation = sender.currentTitle!!
    }
    @IBOutlet weak var calculatorTapped: UIButton!
 
    
    @IBAction func equalTapped(sender: AnyObject){
        isTypingNumber = false
        var result = 0
        secondNumber = calculatorDisplay.text!.toInt()!
        
        if operation == "+" {
            result = firstNumber + secondNumber
        } else if operation == "-" {
            result = firstNumber - secondNumber
        } else if operation == "x" {
            result = firstNumber * secondNumber
        } else if operation == "/" {
            result = firstNumber / secondNumber
        }
        calculatorDisplay.text = "\(result)"
    }
    @IBOutlet weak var equalTapped: UIButton!
    
    @IBAction func deleteTapped(sender: AnyObject) {
        isTypingNumber = false
        var result = 0
        calculatorDisplay.text = "\(result)"
    }
    @IBOutlet weak var deleteTapped: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

