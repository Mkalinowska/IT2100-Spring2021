//
//  ViewController.swift
//  Lab03-WorldTrotterPt1
//
//  Created by Marta Kalinowska on 2/8/21.
//

import UIKit

class ViewController: UIViewController {
    override func viewWillAppear(_ animated: Bool) {
        setGradientBackground()
        super.viewWillAppear(animated)
    }
    
    func setGradientBackground() {
        let purple =  UIColor(red: 0.33, green: 0.00, blue: 0.92, alpha: 1.00).cgColor
        let blue =  UIColor(red: 0.00, green: 0.30, blue: 0.81, alpha: 1.00).cgColor
        let green =  UIColor(red: 0.00, green: 0.55, blue: 0.01, alpha: 1.00).cgColor
        let yellow =  UIColor(red: 0.99, green: 0.80, blue: 0.00, alpha: 1.00).cgColor
        let orange =  UIColor(red: 0.86, green: 0.24, blue: 0.00, alpha: 1.00).cgColor
        let red = UIColor(red: 0.72, green: 0.00, blue: 0.00, alpha: 1.00).cgColor
                    
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [purple, blue, green, yellow, orange, red]
        gradientLayer.frame = self.view.bounds
                
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
}

    
    

 


