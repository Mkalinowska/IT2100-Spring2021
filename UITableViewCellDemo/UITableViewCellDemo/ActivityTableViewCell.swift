//
//  ActivityTableViewCell.swift
//  UITableViewCellDemo
//
//  Created by Marta Kalinowska on 3/15/21.
//

import UIKit

class ActivityTableViewCell: UITableViewCell {
    
    @IBOutlet weak var activity: UILabel!
    @IBOutlet weak var activityNote: UILabel!
    @IBOutlet weak var activityCost: UILabel!

    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
