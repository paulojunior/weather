//
//  AddWeatherCityViewController.swift
//  GoodWeather
//
//  Created by Junior Ferreira on 13/08/21.
//

import Foundation
import UIKit

class AddWeatherCityViewController: UIViewController {
    
    @IBOutlet weak var cityNameTextField: UITextField!
    
    @IBAction func saveCityButtonPressed() {
        
        if let city = cityNameTextField.text {
            
            let weatherURL = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=3b2b727479adc7c07db5d00f1b08d3dd&units=imperial")
            
            let weatherResource = Resource<Any>(url: weatherURL!) { data in
                return data
            }
            
            Webservice().load(resource: weatherResource) { result in
                
            }
        }
        
    }
    
    @IBAction func close() {
        self.dismiss(animated: true, completion: nil)
    }
}
