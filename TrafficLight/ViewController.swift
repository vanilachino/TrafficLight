//
//  ViewController.swift
//  TrafficLight
//
//  Created by John on 24.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redCollorView: UIView!
    @IBOutlet weak var yellowColorView: UIView!
    @IBOutlet weak var greenColorView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    var lightsArray: [UIView] = []
    var currentLight = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lightsArray = [redCollorView, yellowColorView, greenColorView]
        startButton.setTitle("START", for: .normal)
        startButton.layer.cornerRadius = 10
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let radius = redCollorView.frame.height / 2
        redCollorView.layer.cornerRadius = radius
        yellowColorView.layer.cornerRadius = radius
        greenColorView.layer.cornerRadius = radius
    }
    
    @IBAction func startButtonPressed() {
        startButton.setTitle("NEXT", for: .normal)
        let nextLight = currentLight + 1
        
        lightsArray[currentLight].alpha = 0.3
        currentLight = nextLight == lightsArray.count ? 0 : nextLight
        
        lightsArray[currentLight].alpha = 1.0
    }
    
}

