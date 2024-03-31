//
//  CalBrain.swift
//  HelloUIView
//
//  Created by Andrew Wu on 2024/3/31.
//

import UIKit

class CalBrain: NSObject {
    var memoryNumber = 0
    var calculateString = "+"

    func setCalString(newCalString: String, newNumber: Int) -> Int {
        switch calculateString {
        case "+":
            memoryNumber += newNumber
        case "-":
            memoryNumber -= newNumber
        case "*":
            memoryNumber *= newNumber
        case "/":
            memoryNumber /= newNumber
        default:
            break
        }
        
        var returnNumber = memoryNumber
        if newCalString != "=" {
            calculateString = newCalString
        } else {
            resetBrain()
        }

        return returnNumber
    }

    func resetBrain() {
        memoryNumber = 0
        calculateString = "+"
    }
}
