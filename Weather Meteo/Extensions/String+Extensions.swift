//
//  String+Extensions.swift
//  Weather Meteo
//
//  Created by Tuğberk Can Özen on 4.04.2022.
//

import Foundation

extension String {
    
    func escaped() -> String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
    
    
}
