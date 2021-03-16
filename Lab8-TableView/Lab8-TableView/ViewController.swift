//
//  ViewController.swift
//  Lab8-TableView
//
//  Created by Marta Kalinowska on 3/15/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView?
    var musicSongs: [String] = []
    var musicArtists: [String] = []
    var musicTimes: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView?.dataSource = self
        tableView?.delegate = self
    
        addMusic("For Sure", "American Football", "3:18")
        addMusic("Never Meant", "American Football", "4:28")
        addMusic("The Summer Ends", "American Football", "4:46")
    }
    
    func addMusic(_ title: String, _ artist: String, _ time: String){
        self.musicSongs.append(title)
        self.musicArtists.append(artist)
        self.musicTimes.append(time)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musicSongs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "musicCell")
        as! MusicTableViewCell
        cell.musicTitle.text = self.musicSongs[indexPath.item]
        cell.musicArtist.text = self.musicArtists[indexPath.item]
        cell.musicTime.text = self.musicTimes[indexPath.item]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "American Football S/T"
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
}
