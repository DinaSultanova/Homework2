//
//  ViewController.swift
//  Homework2
//
//  Created by Дина on 10.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sliderBlue: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var viewChanched: UIView!
    
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sliderRed.value = 0
        sliderRed.minimumValue = 0
        sliderRed.maximumValue = 1
        sliderRed.minimumTrackTintColor = .red
        
        sliderGreen.value = 0
        sliderGreen.minimumValue = 0
        sliderGreen.maximumValue = 1
        sliderGreen.minimumTrackTintColor = .green
        
        sliderBlue.value = 0
        sliderBlue.minimumValue = 0
        sliderBlue.maximumValue = 1
        sliderBlue.minimumTrackTintColor = .blue
    }

    @IBAction func sliderRedAction(_ sender: Any) {
        redLabel.text = String(sliderRed.value)
    }
    @IBAction func sliderGreenAction(_ sender: Any) {
        greenLabel.text = String(sliderGreen.value)
    }
    @IBAction func sliderBlueAction(_ sender: Any) {
        blueLabel.text = String(sliderBlue.value)
    }
}

