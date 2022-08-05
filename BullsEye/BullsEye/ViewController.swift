//
//  ViewController.swift
//  BullsEye
//
//  Created by Alexander Shabalin on 4/8/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    var currentValue = 0
    var targetValue = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = lround(Double(slider.value))
        targetValue = Int.random(in: 1...100)
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
    }
    
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        
        currentValue = lround(Double(slider.value))
    }
}

