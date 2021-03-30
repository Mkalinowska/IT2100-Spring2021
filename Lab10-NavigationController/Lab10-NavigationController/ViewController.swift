//
//  ViewController.swift
//  Lab10-NavigationController
//
//  Created by Marta Kalinowska on 3/29/21.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet var inputFirstName: UITextField?
    @IBOutlet var inputMiddleName: UITextField?
    @IBOutlet var inputLastName: UITextField?
    @IBOutlet var inputAddressLine1: UITextField?
    @IBOutlet var inputAddressLine2: UITextField?
    @IBOutlet var inputState: UITextField?
    @IBOutlet var inputCity: UITextField?
    @IBOutlet var inputZip: UITextField?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue:
        UIStoryboardSegue, sender: Any?) {
        guard let displayResultsViewController =
                segue.destination as?
                DisplayResultsViewController
        else {
            return
        }
        displayResultsViewController.displayFirstName =
            (inputFirstName?.text)!
        
        displayResultsViewController.displayMiddleName =
            (inputMiddleName?.text)!
        
        displayResultsViewController.displayLastName =
            (inputLastName?.text)!
        
        displayResultsViewController.displayAddressline1 =
            (inputAddressLine1?.text)!
        
        displayResultsViewController.displayAddressline2 =
            (inputAddressLine2?.text)!
        
        displayResultsViewController.displayState =
            (inputState?.text)!
        
        displayResultsViewController.displayCity =
            (inputCity?.text)!
        
        displayResultsViewController.displayZip =
            (inputZip?.text)!
    }
}
