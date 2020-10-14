//
//  ViewController.swift
//  Traffic lights
//
//  Created by Александр Шуплык on 13.10.2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var startButton: UIButton!
    
    private let lightIsOn: CGFloat = 1.0
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.alpha = lightIsOff
        yellowView.alpha = lightIsOff
        greenView.alpha = lightIsOff
        
        startButton.setTitle("START", for: .normal)
        startButton.layer.cornerRadius = 10
    }
    
    override func viewWillLayoutSubviews() {
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
    }
    
    @IBAction func pressedStartButton() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        let lightsIsOnExists = [
            redView,
            yellowView,
            greenView
        ].contains() {$0.alpha == lightIsOn}
        
        if !lightsIsOnExists {
            redView.alpha = lightIsOn
        } else if redView.alpha == lightIsOn {
            redView.alpha = lightIsOff
            yellowView.alpha = lightIsOn
        } else if yellowView.alpha == lightIsOn {
            yellowView.alpha = lightIsOff
            greenView.alpha = lightIsOn
        } else if greenView.alpha == lightIsOn {
            greenView.alpha = lightIsOff
            redView.alpha = lightIsOn
        }
    }
}
