//
//  MailTableCell.swift
//  Birthdays_1
//
//  Created by Артём Синявцев on 07.12.2022.
//

import UIKit

class OneTableCell: UITableViewCell {

  
    
    @IBOutlet weak var dataTable: UILabel!
    @IBOutlet weak var nameTable: UILabel!
    @IBOutlet weak var imageTable: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}


// Configure the view for the selected state
// 5
