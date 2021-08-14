//
//  WeatherListViewModel.swift
//  GoodWeather
//
//  Created by Junior Ferreira on 14/08/21.
//

import Foundation

class WeatherListViewModel {
    
}

class WeatherViewModel {
    
    let weather: WeatherResponse
    
    init(weather: WeatherResponse)  {
        self.weather = weather
    }
    
    var city: String {
        weather.name
    }
    
    var tempeture: Double {
        return weather.main.temp
    }
}
