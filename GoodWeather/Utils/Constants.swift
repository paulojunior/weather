//
//  Constants.swift
//  GoodWeather
//
//  Created by Junior Ferreira on 14/08/21.
//

import Foundation

struct Constants {
    
    struct Urls {
        
        static func urlForWeatherByCity (city: String) -> URL {
            
            let userDefaults = UserDefaults.standard
            let unit = (userDefaults.value(forKey: "unit") as? String) ?? "imperial"
            
            return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped())&appid=3b2b727479adc7c07db5d00f1b08d3dd&units=\(unit)")!
        }
        
    }
    
}
