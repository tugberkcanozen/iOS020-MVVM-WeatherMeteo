//
//  WeatherCell.swift
//  Weather Meteo
//
//  Created by Tuğberk Can Özen on 3.04.2022.
//

import Foundation
import UIKit

class WeatherCell: UITableViewCell {
    
    

    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var tempretureLabel: UILabel!
    
    func configure(_ vm: WeatherViewModel) {
        let tempreture = vm.tempreture
        
        self.cityNameLabel.text = vm.city
        self.tempretureLabel.text = String(Int(tempreture-272.15))
    }
    
}
