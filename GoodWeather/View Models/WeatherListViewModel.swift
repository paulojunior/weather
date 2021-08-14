//
//  WeatherListViewModel.swift
//  GoodWeather
//
//  Created by Junior Ferreira on 14/08/21.
//

import Foundation

class WeatherListViewModel {
    
    private var weatherViewModels = [WeatherViewModel]()
    
    func addWeatherViewModel(_ vm: WeatherViewModel) {
        weatherViewModels.append(vm)
    }
    
    func numberOfRows(_ section: Int) -> Int {
        return weatherViewModels.count
    }
    
    func modelAt(_ index: Int) -> WeatherViewModel {
        return weatherViewModels[index]
    }
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
