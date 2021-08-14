//
//  String+Extensions.swift
//  GoodWeather
//
//  Created by Junior Ferreira on 14/08/21.
//

import Foundation


extension String {
    
    func escaped() -> String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
}
