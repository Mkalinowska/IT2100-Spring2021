//
//  MusicTableViewCell.swift
//  Lab8-TableView
//
//  Created by Marta Kalinowska on 3/15/21.
//

import UIKit

class MusicTableViewCell: UITableViewCell {
    
    @IBOutlet weak var musicTitle: UILabel!
    @IBOutlet weak var musicArtist: UILabel!
    @IBOutlet weak var musicTime: UILabel!



    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
