//
//  MyCustomCell.swift
//  MVCArchitecture
//
//  Created by Anusha Raju on 11/27/24.
//

import UIKit

class MyCustomCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var id: UILabel!
    @IBOutlet weak var department: UILabel!
    
    @IBOutlet weak var salary: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
