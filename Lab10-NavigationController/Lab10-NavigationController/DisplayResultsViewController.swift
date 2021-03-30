//
//  DisplayResultsViewController.swift
//  Lab10-NavigationController
//
//  Created by Marta Kalinowska on 3/29/21.
//

import UIKit

class DisplayResultsViewController: UIViewController {
    
    var displayFirstName: String = ""
    var displayMiddleName: String = ""
    var displayLastName: String = ""
    var displayAddressline1: String = ""
    var displayAddressline2: String = ""
    var displayState: String = ""
    var displayCity: String = ""
    var displayZip: String = ""
    
    @IBOutlet var displayFirstNameLabel: UILabel?
    @IBOutlet var displayMiddleNameLabel: UILabel?
    @IBOutlet var displayLastNameLabel: UILabel?
    @IBOutlet var displayAddressLine1Label: UILabel?
    @IBOutlet var displayAddressLine2Label: UILabel?
    @IBOutlet var displayStateLabel: UILabel?
    @IBOutlet var displayCityLabel: UILabel?
    @IBOutlet var displayZipLabel: UILabel?

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        displayFirstNameLabel?.text = displayFirstName
        displayMiddleNameLabel?.text = displayMiddleName
        displayLastNameLabel?.text = displayLastName
        displayAddressLine1Label?.text = displayAddressline1
        displayAddressLine2Label?.text = displayAddressline2
        displayStateLabel?.text = displayState
        displayCityLabel?.text = displayCity
        displayZipLabel?.text = displayZip
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
