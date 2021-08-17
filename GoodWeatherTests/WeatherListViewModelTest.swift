//
//  WeatherListViewModelTest.swift
//  GoodWeatherTests
//
//  Created by Junior Ferreira on 16/08/21.
//

import XCTest
@testable import GoodWeather

class WeatherListViewModelTest: XCTestCase {

    private var weatherListVM: WeatherListViewModel!
    
    override func setUp() {
        super.setUp()
        self.weatherListVM = WeatherListViewModel()
        self.weatherListVM.addWeatherViewModel(WeatherViewModel(weather: WeatherResponse(name: "Miami", main: Weather(temp: 32, humidity: 10.2))))
        
        self.weatherListVM.addWeatherViewModel(WeatherViewModel(weather: WeatherResponse(name: "Porto Alegre", main: Weather(temp: 72, humidity: 90.1))))
    }
    
    func test_should_be_able_to_convert_to_celsius_sucessfully() {
        
        let celsiusTempeture = [0, 22.2222]
        self.weatherListVM.updateUnit(to: .celsius)
        
        for (index, vm) in self.weatherListVM.weatherViewModels.enumerated() {
            XCTAssertEqual(round(vm.temperature), round(celsiusTempeture[index]))
        }
    }
    
    override func tearDown() {
        super.tearDown()
    }
}
