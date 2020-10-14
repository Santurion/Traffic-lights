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
        yellowView.layer.cornerRadius = 55
        greenView.layer.cornerRadius = 55
        startButton.layer.cornerRadius = 10
    }


    @IBAction func pressedStartButton() {
    }
}

