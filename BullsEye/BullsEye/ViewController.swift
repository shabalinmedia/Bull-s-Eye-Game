//
//  ViewController.swift
//  BullsEye
//
//  Created by Alexander Shabalin on 4/8/22.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue = 50

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert() {
        
        let message = "The value of the slider is: \(currentValue)"
        
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

