//
//  Scene2ViewController.swift
//  Lab09-MultipleScenes
//
//  Created by Marta Kalinowska on 3/22/21.
//

import UIKit

class Scene2ViewController: UIViewController {

    @IBOutlet weak var sceneTwoLabel: UILabel!
    @IBOutlet weak var helloNameLabel: UILabel!
    @IBOutlet weak var unWindSceneOneButton: UIButton!
    
    var name: String?
    override func viewDidLoad() {
    super.viewDidLoad()
        helloNameLabel.text = "Name: hello \(String(describing: name))"
    }
}

