//
//  ViewController.swift
//  RandomAnimation
//
//  Created by Александр Макаров on 21.09.2021.
//

import Spring

class ViewController: UIViewController {
    
    
    //MARK: - IBOutlets
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var runButton: SpringButton!
    
    //MARK: - Private Properties
    private var someAnimation = Animation.getAnimation()
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        springAnimationView.layer.cornerRadius = 10
        runButton.layer.cornerRadius = 10
        setLabelsText(from: someAnimation)
    }
    
    //MARK: - IBAction
    @IBAction func runButtonPressed(_ sender: SpringButton) {
        setAnimationParameters(from: someAnimation)
        springAnimationView.animate()
        
        someAnimation = Animation.getAnimation()
        
        setLabelsText(from: someAnimation)
        sender.setTitle("Run " + someAnimation.type.rawValue, for: .normal)
        
    }
    //MARK: - PrivetFunc
    private func setAnimationParameters(from animation: Animation) {
        springAnimationView.animation = animation.type.rawValue
        springAnimationView.curve = animation.curve.rawValue
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
    }
    
    private func setLabelsText(from animation: Animation){
        presetLabel.text = "preset: " + animation.type.rawValue
        curveLabel.text = "curve: " + animation.curve.rawValue
        forceLabel.text = "force: " + String(format: "%.2f", animation.force)
        durationLabel.text = "duration: " + String(format: "%.2f", animation.duration)
        delayLabel.text = "delay: " + String(format: "%.2f", animation.delay)
    }
}

