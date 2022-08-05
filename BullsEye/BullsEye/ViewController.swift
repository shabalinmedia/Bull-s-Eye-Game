//
//  ViewController.swift
//  BullsEye
//
//  Created by Alexander Shabalin on 4/8/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    var currentValue = 0
    var targetValue = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
    }

    @IBAction func showAlert() {
        
        let message = "The value of the slider is: \(currentValue)" + "\nThe target value is: \(targetValue)"
        
        let alert = UIAlertController(
        title: "Hello, World",
        message: message,
        preferredStyle: .alert)
        
        let action = UIAlertAction(
        title: "OK",
        style: .default,
        handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        startNewRound()
    }
    
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        
        currentValue = lround(Double(slider.value))
    }
    
    func startNewRound() {
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    
    func updateLabels() {
        targetLabel.text = String(targetValue)
    }
}

