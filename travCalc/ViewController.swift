//
//  ViewController.swift
//  travCalc
//
//  Created by Travis Moody on 7/1/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calcResults: UILabel!
    
    @IBOutlet weak var calcWorkings: UILabel!
    
    var equation:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
    }

    func clearAll(){
        equation = ""
        calcResults.text = ""
        calcWorkings.text = ""
    }
    
    @IBAction func allClearTap(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func backTap(_ sender: Any) {
        
        if(!equation.isEmpty){
            equation.removeLast()
            calcWorkings.text = equation
        }
        
    }
    
    func addToEquation(value: String){
        equation = equation + value.replacingOccurrences(of: "π", with: "3.14159")
        calcWorkings.text = equation
    }
    
    @IBAction func percentTap(_ sender: Any) {
        addToEquation(value: "%")
    }
    
    @IBAction func sqRootTap(_ sender: Any) {
        addToEquation(value: "%")
    }
    
    @IBAction func leftParenTap(_ sender: Any) {
        addToEquation(value: "(")
    }
    
    @IBAction func rightParentTap(_ sender: Any) {
        addToEquation(value: ")")
    }
    
    @IBAction func pieTap(_ sender: Any) {
        addToEquation(value: "π")
    }
    
    @IBAction func divideTap(_ sender: Any) {
        addToEquation(value: "/")
    }
    
    @IBAction func multiplyTap(_ sender: Any) {
        addToEquation(value: "*")
    }
    
    @IBAction func minusTap(_ sender: Any) {
        addToEquation(value: "-")
    }
    
    @IBAction func plusTap(_ sender: Any) {
        addToEquation(value: "+")
    }
    
    
    @IBAction func equalsTap(_ sender: Any) {
        
        let expression = NSExpression(format: equation)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatResult(result: result)
        calcResults.text = resultString
        
    }
    
  
    
    func formatResult(result: Double) -> String {
        
        if(result.truncatingRemainder(dividingBy: 1) == 0){
            return String(format: "%.0f", result)
        }
        else {
            return String(format: "%.2f", result)
        }
    }
    
    @IBAction func decimalTap(_ sender: Any) {
        addToEquation(value: ".")
    }
    
    @IBAction func zeroTap(_ sender: Any) {
        addToEquation(value: "0")
    }
    
    @IBAction func oneTap(_ sender: Any) {
        addToEquation(value: "1")
    }
    
    @IBAction func twoTap(_ sender: Any) {
        addToEquation(value: "2")
    }
    
    @IBAction func threeTap(_ sender: Any) {
        addToEquation(value: "3")
    }
    
    @IBAction func fourTap(_ sender: Any) {
        addToEquation(value: "4")
    }
    
    @IBAction func fiveTap(_ sender: Any) {
        addToEquation(value: "5")
    }
    
    @IBAction func sixTap(_ sender: Any) {
        addToEquation(value: "6")
    }
    
    @IBAction func sevenTap(_ sender: Any) {
        addToEquation(value: "7")
    }
    
    @IBAction func eightTap(_ sender: Any) {
        addToEquation(value: "8")
    }
    
    @IBAction func nineTap(_ sender: Any) {
        addToEquation(value: "9")
    }
}

