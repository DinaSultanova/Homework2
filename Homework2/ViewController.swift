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
        viewChanched.layer.cornerRadius = 10
        redLabel.text = String(sliderRed.value)
        blueLabel.text = String(sliderBlue.value)
        greenLabel.text = String(sliderGreen.value)
        
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
        redLabel.text = String(round(100 * sliderRed.value)/100)
        changingView ()
    }
        @IBAction func sliderGreenAction(_ sender: Any) {
        greenLabel.text = String(round(100 * sliderGreen.value)/100)
        changingView ()
    }
       @IBAction func sliderBlueAction(_ sender: Any) {
        blueLabel.text = String(round(100 * sliderBlue.value)/100)
        changingView ()
    }
    
    func changingView () {
        let sliderBlue = CGFloat(sliderBlue.value)
        let sliderGreen = CGFloat(sliderGreen.value)
        let sliderRed = CGFloat(sliderRed.value)
        viewChanched.backgroundColor = UIColor(red: sliderRed, green: sliderGreen, blue: sliderBlue, alpha: 1)
    }
    
}

