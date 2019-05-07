//
//  ViewController.swift
//  Color Picker
//
//  Created by Marcell Julienne on 07/05/19.
//  Copyright © 2019 Marcell Julienne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var UIView: UIView!
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
//SLider
    @IBAction func redSliderChanges(_ sender: UISlider) {
        let color = generateColor(red: CGFloat(sender.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value) )
        UIView.backgroundColor = color
        
    }
    
    @IBAction func greenSliderChanges(_ sender: UISlider) {
        let color = generateColor(red: CGFloat(redSlider.value), green: CGFloat(sender.value), blue: CGFloat(blueSlider.value))
        UIView.backgroundColor = color
    }
    
    @IBAction func blueSliderChanges(_ sender: UISlider) {
        let color = generateColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: (CGFloat(sender.value)))
        UIView.backgroundColor = color
    }

    
//Switch
    @IBAction func redSwitchCondition(_ sender: UISwitch) {
        if sender.isOn {
            redSlider.isEnabled = true
        }
        else{
            redSlider.isEnabled = false
            redSlider.value = 0
        }
    }
    
    @IBAction func greenSwitchCondition(_ sender: UISwitch) {
        if sender.isOn {
            greenSlider.isEnabled = true
        }
        else {
            greenSlider.isEnabled = false
            greenSlider.value = 0
        }
    }
    
    @IBAction func blueSwitchCondition(_ sender: UISwitch) {
        if sender.isOn {
            blueSlider.isEnabled = true
        }
        else {
            blueSlider.isEnabled = false
            blueSlider.value = 0
        }
    }
    
    //reset button when it is tapped
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        UIView.backgroundColor = .black
        redSlider.value = 0
        greenSlider.value = 0
        blueSlider.value = 0
    }
    
//appearance

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        redSlider.tintColor = #colorLiteral(red: 1, green: 0, blue: 0.1290472746, alpha: 1)
        greenSlider.tintColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        blueSlider.tintColor = .blue
        
        redSwitch.onTintColor = .red
        greenSwitch.onTintColor = .green
        blueSwitch.onTintColor = .blue
        
        redSlider.maximumValue = 255
        greenSlider.maximumValue = 255
        blueSlider.maximumValue = 255
        
        let redColor = CGFloat(redSlider.value)
        let greenColor = CGFloat(greenSlider.value)
        let blueColor = CGFloat(blueSlider.value)
        
        UIView.backgroundColor = UIColor(red: redColor/255, green: greenColor/255, blue: blueColor/255, alpha: 1)
        UIView.layer.borderColor = UIColor.black.cgColor
        UIView.layer.borderWidth = 5
        UIView.layer.cornerRadius = 10
    }

    //function to generate colour
    func generateColor(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }

}

