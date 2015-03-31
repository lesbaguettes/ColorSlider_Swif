//
//  ViewController.swift
//  homework1
//
//  Created by 최완택 on 2015. 3. 18..
//  Copyright (c) 2015년 eh-iphone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabelColor()
        setLabelText()
        redLabel.text   = "\(Int(redSlider.value))"
        greenLabel.text = "\(Int(greenSlider.value))"
        blueLabel.text  = "\(Int(blueSlider.value))"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setLabelColor() {
        let rV  = CGFloat(redSlider.value) / 255.0
        let gV  = CGFloat(greenSlider.value) / 255.0
        let bV  = CGFloat(blueSlider.value) / 255.0
        let backColor   = UIColor(red: rV, green: gV, blue: bV, alpha: 1.0)
        
        colorLabel.backgroundColor  = backColor
    }
    
    func setLabelText() {
        let rV  = CGFloat(redSlider.value) / 255.0
        let gV  = CGFloat(greenSlider.value) / 255.0
        let bV  = CGFloat(blueSlider.value) / 255.0
        let br  = (rV + gV + bV) / 3
        let textColor           = UIColor(red: (1-br)*1.5, green: (1-br)*1.5, blue: (1-br)*1.5, alpha: 1.0)
        // let textColor        = UIColor(red: 1-rV, green: 1-gV, blue: 1-bV, alpha: 1.0)
        
        colorLabel.textColor    = textColor
        colorLabel.text         = "color"
    }
    
    @IBAction func onRSlider(sender: UISlider) {
        setLabelColor()
        setLabelText()
        redLabel.text   = "\(Int(sender.value))"
    }
    @IBAction func onGSlider(sender: UISlider) {
        setLabelColor()
        setLabelText()
        greenLabel.text = "\(Int(sender.value))"
    }
    @IBAction func onBSlider(sender: UISlider) {
        setLabelColor()
        setLabelText()
        blueLabel.text  = "\(Int(sender.value))"
    }
    
}