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
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    var currentValue = 0
    var targetValue = 0
    var score = 0
    var round = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
    }

    @IBAction func showAlert() {
        let difference = abs(targetValue - currentValue)
        let points = 100 - difference
        
        score += points
        
        
       
        let message = "Your score \(points) points"
        
        
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
        round += 1
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    
    func updateLabels() {
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
        roundLabel.text = String(round)
    }
}

