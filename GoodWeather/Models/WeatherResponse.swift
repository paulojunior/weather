//
//  WeatherResponse.swift
//  GoodWeather
//
//  Created by Junior Ferreira on 14/08/21.
//

import Foundation

struct WeatherResponse: Decodable {
    let name: String
    let main: Weather
}


struct Weather: Decodable {
    let temp: Double
    let humidity: Double
}
