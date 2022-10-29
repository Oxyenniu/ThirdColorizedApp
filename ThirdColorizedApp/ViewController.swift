//
//  ViewController.swift
//  ThirdColorizedApp
//
//  Created by Oxyenniu on 29.10.2022.
//

import UIKit

class ViewController: UIViewController {

// MARK: - IB Outlets
    @IBOutlet var colorizedView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupRedSlider()
        setupGreenSlider()
        setupBlueSlider()
        
        redSliderAction()
        greenSliderAction()
        blueSliderAction()
        
        setupRedLabel()
        setupGreenLabel()
        setupBlueLabel()
        
        setupRedValueLabel()
        setupGreenValueLabel()
        setupBlueValueLabel()
        
        
        
        
    }

// MARK: - IB Actions
    @IBOutlet var colorizedViewAction: UIView!
    
    @IBAction func redSliderAction() {
        redValueLabel.text = (round((redSlider.value * 100)) / 100).formatted()
        colorizedView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                                green: CGFloat(greenSlider.value),
                                                blue: CGFloat(blueSlider.value),
                                                alpha: CGFloat(1))
    }
    @IBAction func greenSliderAction() {
        greenValueLabel.text = (round((greenSlider.value * 100)) / 100).formatted()
        colorizedView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                                green: CGFloat(greenSlider.value),
                                                blue: CGFloat(blueSlider.value),
                                                alpha: CGFloat(1))
    }
    @IBAction func blueSliderAction() {
        blueValueLabel.text = (round((blueSlider.value * 100)) / 100).formatted()
        colorizedView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                                green: CGFloat(greenSlider.value),
                                                blue: CGFloat(blueSlider.value),
                                                alpha: CGFloat(1))
    }
    
    
    
    
// MARK: - Private Methods
    
    
    override func viewWillLayoutSubviews() {
        colorizedView.layer.cornerRadius = colorizedView.frame.width / 15
    }
    
    private func setupRedLabel() {
        redLabel.text = "Red"
        redLabel.font = UIFont.systemFont(ofSize: 18)
    }
    
    private func setupGreenLabel() {
        greenLabel.text = "Green"
        greenLabel.font = UIFont.systemFont(ofSize: 18)
    }
    
    private func setupBlueLabel() {
        blueLabel.text = "Blue"
        blueLabel.font = UIFont.systemFont(ofSize: 18)
    }
    
    
    
    private func setupRedValueLabel() {
        redValueLabel.text = redSlider.value.formatted()
        redValueLabel.font = UIFont.systemFont(ofSize: 18)
    }
    private func setupGreenValueLabel() {
        greenValueLabel.text = greenSlider.value.formatted()
        greenValueLabel.font = UIFont.systemFont(ofSize: 18)
    }
    private func setupBlueValueLabel() {
        blueValueLabel.text = blueSlider.value.formatted()
        blueValueLabel.font = UIFont.systemFont(ofSize: 18)
    }
    
    
    private func setupRedSlider() {
        redSlider.value = 0.5
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .red
        redSlider.maximumTrackTintColor = .none
        redSlider.thumbTintColor = .white
    }
    private func setupGreenSlider() {
        greenSlider.value = 0.5
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .green
        greenSlider.maximumTrackTintColor = .none
        greenSlider.thumbTintColor = .white
    }
    private func setupBlueSlider() {
        blueSlider.value = 0.5
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.maximumTrackTintColor = .none
        blueSlider.thumbTintColor = .white
    }

}

