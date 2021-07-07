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
        calcWorkings.text = equation.replacingOccurrences(of: "3.14159", with: "π")
        
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
        
       
       
        let equationArr = Array(equation)
        var newArr = [String]()
        var finalArr = [String]()
        let lastTwo = equationArr.suffix(2).map{String($0)}
 
        
        for i in 0..<equationArr.count - 1{

            if equationArr[i] == equationArr[i + 1] &&
                equationArr[i] == "1" ||
                equationArr[i] ==  "2" ||
                equationArr[i] ==  "3" ||
                equationArr[i] ==  "4" ||
                equationArr[i] ==  "5" ||
                equationArr[i] ==  "6" ||
                equationArr[i] ==  "7" ||
                equationArr[i] ==  "8" ||
                equationArr[i] ==  "9" ||
                equationArr[i] ==  "0" ||
                equationArr[i] ==  "(" ||
                equationArr[i] ==  ")" ||
                equationArr[i] !=  "." &&
                equationArr[i] !=  "-" &&
                equationArr[i] !=  "+" &&
                equationArr[i] !=  "*"
            {
                newArr.append(String(equationArr[i]))
                
        }
            else if equationArr[i] != equationArr[i + 1]{
                newArr.append(String(equationArr[i]))
            }
            
        }

        for i in 0..<newArr.count - 1{

            if  newArr[i] == "0" ||
                    newArr[i] == "1" ||
                    newArr[i] == "2" ||
                    newArr[i] == "3" ||
                    newArr[i] == "4" ||
                    newArr[i] == "5" ||
                    newArr[i] == "6" ||
                    newArr[i] == "7" ||
                    newArr[i] == "8" ||
                    newArr[i] == "9" ||
                    newArr[i] == "0" ||
                    newArr[i] == "(" ||
                    newArr[i] == ")"
                {
                finalArr.append(newArr[i])
            }
            else if newArr[i + 1] == "1" ||
            newArr[i + 1] == "2" ||
            newArr[i + 1] == "3" ||
            newArr[i + 1] == "4" ||
            newArr[i + 1] == "5" ||
            newArr[i + 1] == "6" ||
            newArr[i + 1] == "7" ||
            newArr[i + 1] == "8" ||
            newArr[i + 1] == "9" ||
            newArr[i + 1] == "0" ||
            newArr[i + 1] == "(" ||
            newArr[i + 1] == ")"
        {
                finalArr.append(newArr[i])
            }
        }

        var endArr = finalArr + lastTwo

        if endArr[endArr.count - 1] == "." ||
            endArr[endArr.count - 1] == "-" ||
            endArr[endArr.count - 1] == "+" ||
            endArr[endArr.count - 1] == "*"
            {
            endArr = endArr.dropLast()
            }
        
       let resultString = endArr.joined()
        
       let checkPercent = resultString.replacingOccurrences(of: "%", with: "*0.01")
        
       let expression = NSExpression(format: checkPercent)
        
       let result = expression.expressionValue(with: nil, context: nil) as! Double
        
        calcResults.text = String(result)
        calcWorkings.text = String(resultString)
        
        }
    
    
    func formatResult(result: Double) -> String {
        
        if(result.truncatingRemainder(dividingBy: 1) == 0){
            return String(format: "%.0f", result)
        }
        else {
            return String(format: "%.10f", result)
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

