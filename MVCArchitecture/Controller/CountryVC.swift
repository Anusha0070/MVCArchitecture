//
//  CountryVC.swift
//  MVCArchitecture
//
//  Created by Anusha Raju on 11/27/24.
//

import UIKit

class CountryVC: UIViewController {

    @IBOutlet weak var countryTV: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let sharedInstance = Network.sharedInstance
        
        sharedInstance.getData(from: "https://gist.githubusercontent.com/peymano-wmt/32dcb892b06648910ddd40406e37fdab/raw/db25946fd77c5873b0303b858e861ce724e0dcd0/countries.json")

    }


}
