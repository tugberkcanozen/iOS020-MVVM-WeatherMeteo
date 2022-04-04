//
//  Weather.swift
//  Weather Meteo
//
//  Created by Tuğberk Can Özen on 4.04.2022.
//

import Foundation
import UIKit

struct WeatherResponse: Decodable {
    let name: String
    let main: Weather
}

struct Weather: Decodable {
    
    let temp: Double
    let humidity: Double
    
}
