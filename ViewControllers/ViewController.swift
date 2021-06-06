//
//  ViewController.swift
//  Colors
//
//  Created by user on 22/05/2021.
//

import UIKit

protocol ColorDelegate: AnyObject {
    func setColor(_ color: UIColor?)
}

class ViewController: UIViewController {

    @IBOutlet weak var adjustedView: UIView!
    
    @IBOutlet weak var redColorNumber: UILabel!
    @IBOutlet weak var greenColorNumber: UILabel!
    @IBOutlet weak var blueColorNumber: UILabel!
    @IBOutlet weak var alphaNumber: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    
    weak var delegate: ColorDelegate?
    
    var initialColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDefaultColor(initialColor ?? .clear)
//        redSlider.value = 120
//        greenSlider.value = 180
//        blueSlider.value = 70
//        redColorNumber.text = String(format: "%.1f", redSlider.value)
//        greenColorNumber.text = String(format: "%.1f", greenSlider.value)
//        blueColorNumber.text = String(format: "%.1f", blueSlider.value)
//        alphaNumber.text = "\(alphaSlider.value)"
//        adjustedView.backgroundColor = UIColor(red: CGFloat((redSlider.value)/255.0), green: CGFloat((greenSlider.value)/255.0), blue: CGFloat((blueSlider.value)/255.0), alpha: CGFloat(alphaSlider.value))
    }
    
    private func setDefaultColor(_ color: UIColor) {
        
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0

        color.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        redSlider.value = Float(red * 255)
        greenSlider.value = Float(green * 255)
        blueSlider.value = Float(blue * 255)
        alphaSlider.value = Float(alpha)
        redColorValue()
        greenColorValue()
        blueColorValue()
        alphaSliderValue()
//        redColorNumber.text = String(format: "%.1f", redSlider.value)
//        greenColorNumber.text = String(format: "%.1f", greenSlider.value)
//        blueColorNumber.text = String(format: "%.1f", blueSlider.value)
//        alphaNumber.text = "\(alphaSlider.value)"
//        adjustedView.backgroundColor = UIColor(red: CGFloat((redSlider.value)/255.0), green: CGFloat((greenSlider.value)/255.0), blue: CGFloat((blueSlider.value)/255.0), alpha: CGFloat(alphaSlider.value))
    }
    
    @IBAction func redColorValue() {
        redColorNumber.text = String(format: "%.1f", redSlider.value)
        colors()
    }
    @IBAction func greenColorValue() {
        greenColorNumber.text = String(format: "%.1f", greenSlider.value)
        colors()
    }
    @IBAction func blueColorValue() {
        blueColorNumber.text = String(format: "%.1f", blueSlider.value)
        colors()
    }
    @IBAction func alphaSliderValue() {
        alphaNumber.text = String(format: "%.1f", alphaSlider.value)
        colors()
    }
    
    @IBAction func doneButtonPressed() {
        delegate?.setColor(adjustedView.backgroundColor)
        dismiss(animated: true)
    }
    
    func colors() {
        adjustedView.backgroundColor = UIColor(red: CGFloat((redSlider.value)/255.0), green: CGFloat((greenSlider.value)/255.0), blue: CGFloat((blueSlider.value)/255.0), alpha: CGFloat(alphaSlider.value))
    }

}
  
    


