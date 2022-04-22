//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Ayris Gürbulak on 22.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    private var isFinishedTypingNumber: Bool = false
    private var resultValue: Int = 0
    private var number: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func numberPressed(_ sender: UIButton) {
        if let numValue = sender.currentTitle {
            number = number + numValue
            resultLabel.text = number
        }
    }
    
    @IBAction func addButton(_ sender: UIButton) {
        if let num = Int(number) {
            resultValue += num
        }
        number = ""
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        if let num = Int(number) {
            resultValue += num
        }
        resultLabel.text = String(resultValue)
        number = ""
        resultValue = 0
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        resultLabel.text = "0"
        number = ""
        resultValue = 0
        
    }
}

