//
//  CountryDetailCell.swift
//  MVCArchitecture
//
//  Created by Anusha Raju on 11/30/24.
//

import UIKit

class CountryDetailCell: UITableViewCell {

    @IBOutlet weak var countryName: UILabel!
    
    @IBOutlet weak var capital: UILabel!
    
    @IBOutlet weak var code: UILabel!
    
    @IBOutlet weak var currency: UILabel!
    
    @IBOutlet weak var currencyCode: UILabel!
    
    @IBOutlet weak var currencyName: UILabel!
    
    
    @IBOutlet weak var currencySymbol: UILabel!
    
    
    @IBOutlet weak var flag: UILabel!
    
    @IBOutlet weak var language: UILabel!
    
    @IBOutlet weak var languageCode: UILabel!
    
    @IBOutlet weak var languageName: UILabel!
    
    
    @IBOutlet weak var region: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
