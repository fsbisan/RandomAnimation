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
    @IBAction func runButtonPressed(_ sender: UIButton) {
        setAnimationParameters(from: someAnimation)
        springAnimationView.animate()
        setLabelsText(from: someAnimation)
        
        someAnimation = Animation.getAnimation()
        
        sender.setTitle("Run " + someAnimation.type.rawValue, for: .normal)
        
    }
    //MARK: - Private Functions
    private func setAnimationParameters(from animation: Animation) {
        springAnimationView.animation = animation.type.rawValue
        springAnimationView.curve = animation.curve.rawValue
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
    }
    
    private func setLabelsText(from animation: Animation){
        presetLabel.text = animation.description
    }
}

