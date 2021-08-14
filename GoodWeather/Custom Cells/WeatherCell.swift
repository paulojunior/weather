//
//  WeatherCell.swift
//  GoodWeather
//
//  Created by Junior Ferreira on 13/08/21.
//

import Foundation
import UIKit

class WeatherCell: UITableViewCell {
    
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    
    func configure(_ vm: WeatherViewModel) {
        self.cityNameLabel.text = vm.city
        self.temperatureLabel.text = "\(vm.tempeture.formatAsDegree())"
    }
    
}
