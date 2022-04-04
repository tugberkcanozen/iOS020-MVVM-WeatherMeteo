//
//  Constants.swift
//  Weather Meteo
//
//  Created by Tuğberk Can Özen on 4.04.2022.
//

import Foundation

struct Constants {
    
    struct Urls {
        
        static func urlForWeatherByCity(city: String) -> URL {
            
//MARK: - Sıcaklık için varsayılan ayarları alıyoruz
            
            // let userDefaults = UserDefaults.standard
            // let unit = (userDefaults.value(forKey: "unit") as? String) ?? "imperial"
            
            return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped())&appid=a020c59ad1cacb1b6ce633e769f9ede7")!
        }
    }
}
