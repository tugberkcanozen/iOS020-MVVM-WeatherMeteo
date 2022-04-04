//
//  WeatherListViewModel.swift
//  Weather Meteo
//
//  Created by Tuğberk Can Özen on 4.04.2022.
//

import Foundation
import UIKit

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
    init(weather: WeatherResponse) {
        
        self.weather = weather
    }
    
    var city: String {
        return weather.name
    }
    
    var tempreture: Double {
        return weather.main.temp
    }
    
    var humidity: Double {
        return weather.main.humidity
    }
}
