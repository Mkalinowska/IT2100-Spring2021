//
//  ViewController.swift
//  Lab01-AJoke
//
//  Created by Marta Kalinowska on 1/24/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var jokeLabel: UILabel!
    @IBOutlet var punchLineLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
}
    @IBAction func showJoke(_ sender: UIButton) {
        self.jokeLabel.text = "The first byte asked the second byte, \"are you feeling sick?\""
    }
    @IBAction func showPunchLine(_ sender: UIButton) {
        self.punchLineLabel.text = "No, I'm just feeling a bit off."

    }

    }
