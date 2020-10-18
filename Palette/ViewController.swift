//
//  ViewController.swift
//  Palette
//
//  Created by Gleb on 10/18/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var redNumber: UILabel!
    @IBOutlet var greenNumber: UILabel!
    @IBOutlet var blueNumber: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlaider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Slaider red
        redSlider.value = 0
        redSlider.maximumValue = 1
        redSlider.minimumValue = 0
        redSlider.tintColor = .red
//        Slaider green
        greenSlider.value = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumValue = 0
        greenSlider.tintColor = .green
//        Slaider blue
        blueSlaider.value = 0
        blueSlaider.maximumValue = 1
        blueSlaider.minimumValue = 0
        blueSlaider.tintColor = .blue
        
        
    }

    func changeColor() {
        mainLabel.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlaider.value), alpha: 1)
        redNumber.text = String(redSlider.value)
        greenNumber.text = String(greenSlider.value)
        blueNumber.text = String(blueSlaider.value)
    }
    
    @IBAction func rgbSliderAction() {
        changeColor()
    }
    
    

}

