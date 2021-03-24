//
//  ViewController.swift
//  Lab09-MultipleScenes
//
//  Created by Marta Kalinowska on 3/22/21.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var sceneOneLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var goToSceneTwoButton: UIButton!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard let firstVC = segue.destination as? Scene2ViewController else { return }
    firstVC.name = nameTextField.text
        
    }
    
    @IBAction func performUnwindSegueOperation(_ sender: UIStoryboardSegue) {
        guard sender.source is Scene2ViewController else { return }
    }
}

