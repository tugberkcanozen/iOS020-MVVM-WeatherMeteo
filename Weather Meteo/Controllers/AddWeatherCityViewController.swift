//
//  AddWeatherCityViewController.swift
//  Weather Meteo
//
//  Created by Tuğberk Can Özen on 3.04.2022.
//

import Foundation
import UIKit

protocol AddWeatherDelegate {
    func addWeatherDidSave(vm: WeatherViewModel)
}

class AddWeatherCityViewController: UIViewController {
    
    @IBOutlet weak var cityNameTextField: UITextField!
    private var addWeatherVM = AddWeatherViewModel()
    var delegate: AddWeatherDelegate?
    
    
    @IBAction func saveCityButtonPressed(_ sender: Any) {
        
        if let city = cityNameTextField.text {
            
            addWeatherVM.addWeather(for: city) { vm in
                
                self.delegate?.addWeatherDidSave(vm: vm)
                self.dismiss(animated: true, completion: nil)
                
            }
        }
        
    }
    @IBAction func close(_ sender: Any) {
        
        self.dismiss(animated:true, completion: nil)
        
    }
    
}
