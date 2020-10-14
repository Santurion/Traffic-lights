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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = 55
        redView.alpha = 0.3
        yellowView.layer.cornerRadius = 55
        yellowView.alpha = 0.3
        greenView.layer.cornerRadius = 55
        greenView.alpha = 0.3
        startButton.layer.cornerRadius = 10
    }
    

    @IBAction func pressedStartButton() {
        if redView.alpha != 1 {
            redView.alpha = 1
            startButton.setTitle("NEXT", for: .normal)
        } 
    }
}
