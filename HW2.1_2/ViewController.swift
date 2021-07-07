//
//  ViewController.swift
//  HW2.1_2
//
//  Created by Kovalyov Dmitry on 07.07.2021.
//

import UIKit

enum TrafficLightColor {
    case red
    case yellow
    case green
}

class ViewController: UIViewController {
    
    var trafficLightColor = TrafficLightColor.red
    
    @IBOutlet var trafficLightBack: UIView!
    
    @IBOutlet var switchButton: UIButton!
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trafficLightBack.layer.cornerRadius = 15
        
        switchButton.layer.cornerRadius = 15
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
    }
    
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width * 0.5
        redLight.clipsToBounds = true
        
        yellowLight.layer.cornerRadius = yellowLight.frame.width * 0.5
        yellowLight.clipsToBounds = true
        
        greenLight.layer.cornerRadius = greenLight.frame.width * 0.5
        greenLight.clipsToBounds = true
    }
    
    
    @IBAction func switchTheColor() {
        
        switchButton.setTitle("next", for: .normal)
        
        switch trafficLightColor {
        case .red:
            redLight.alpha = 1
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
            trafficLightColor = .yellow
        case .yellow:
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            greenLight.alpha = 0.3
            trafficLightColor = .green
        case .green:
            redLight.alpha = 0.3
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            trafficLightColor = .red
        }
    }
    
}

