//
//  ViewController.swift
//  RandomAnimation
//
//  Created by Александр Макаров on 21.09.2021.
//

import Spring


class ViewController: UIViewController {



    @IBOutlet var springAnimationView: SpringView!
    
   
    @IBAction func runButtonPressed(_ sender: SpringButton) {
        springAnimationView.animation = "shake"
        springAnimationView.animate()
    }
    
}

