//
//  Double+Extensions.swift
//  Weather Meteo
//
//  Created by Tuğberk Can Özen on 4.04.2022.
//

import Foundation

extension Double {
    
    func formatAsDegree() -> String {
        return String(format: "%.0f°", self)
    }
}
