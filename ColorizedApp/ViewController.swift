//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Алишер Маликов on 17.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorWindow: UIView!
    
    @IBOutlet var redGraph: UILabel!
    @IBOutlet var greenGraph: UILabel!
    @IBOutlet var blueGraph: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorWindow.layer.cornerRadius = 10
        
        setupGraphColor()
        setupSliders()
        
    }
    
    @IBAction func redSliderAction() {
        let sliderValue = round(redSlider.value * 100) / 100
        redGraph.text = sliderValue.formatted()
        changeColorView()
    }
    
    @IBAction func greenSliderAction() {
        let sliderValue = round(greenSlider.value * 100) / 100
        greenGraph.text = sliderValue.formatted()
        changeColorView()
    }
    
    @IBAction func blueSliderAction() {
        let sliderValue = round(blueSlider.value * 100) / 100
        blueGraph.text = sliderValue.formatted()
        changeColorView()
    }
    
// MARK: Private methods
    private func changeColorView() {
        colorWindow.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    private func setupGraphColor() {
        redGraph.text = redSlider.value.formatted()
        greenGraph.text = greenSlider.value.formatted()
        blueGraph.text = blueSlider.value.formatted()
    }
    
    private func setupSliders() {
        redSlider.minimumTrackTintColor = .red
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        
        greenSlider.minimumTrackTintColor = .green
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
    }
    
}

