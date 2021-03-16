//
//  ViewController.swift
//  UITableViewCellDemo
//
//  Created by Marta Kalinowska on 3/15/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView?
    var activities: [String] = []
    var activitiesNotes: [String] = []
    var activitiesCosts: [Double] = []


    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView?.dataSource = self
        tableView?.delegate = self
        
        addActivity("Hiking", "Breath some fresh air", 0.0)
        addActivity("Biking", "I have the need for speed", 0.0)
        addActivity("Hiking", "I hope they still show movies", 10.0)
    }
    
    func addActivity(_ activity: String, _ note: String, _ cost: Double) {
        self.activities.append(activity)
        self.activitiesNotes.append(note)
        self.activitiesCosts.append(cost)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return activities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "activitiesCell")
            as! ActivityTableViewCell
        cell.activity.text = self.activities[indexPath.item]
        cell.activityNote.text = self.activitiesNotes[indexPath.item]
        cell.activityCost.text = String(format: "$%.02f", self.activitiesCosts[indexPath.item])
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "American Football S/T"
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    
}

