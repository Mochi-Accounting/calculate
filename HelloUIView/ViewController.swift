//
//  ViewController.swift
//  HelloUIView
//
//  Created by Andrew Wu on 2024/3/30.
//

import UIKit

class ViewController: UIViewController {
    let brain = CalBrain()
    var clearFlag = false
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func oneAction(_ sender: UIButton) {
        if clearFlag {
            displayLabel.text = "0"
            clearFlag = false
        }
        guard let currentText = displayLabel.text else {
            return
        }
        displayLabel.text = currentText != "0" ? currentText + sender.titleLabel!.text! : sender.titleLabel!.text!
    }

    @IBAction func clearAction(_ sender: Any) {
        displayLabel.text = "0"
        brain.resetBrain()
    }

    @IBAction func calAction(_ sender: UIButton) {
        clearFlag = true
        if let newCalString = sender.titleLabel?.text,
           let numberString = displayLabel.text {
            if let newNumber = Int(numberString) {
                let newNum = brain.setCalString(newCalString: newCalString, newNumber: newNumber)
                displayLabel.text = "\(newNum)"
            }
        }
    }
}

