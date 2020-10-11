//
//  String+Extensions.swift
//  Algolab
//
//  Created by Kyle Thompson on 6/21/20.
//  Copyright © 2020 Kyle Thompson. All rights reserved.
//

import Foundation

extension String {
  var urlEscaped: String {
    return addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
  }

  var utf8Encoded: Data {
    return data(using: .utf8)!
  }
  
  var formattedCurrency: String? {
    let formatter = NumberFormatter()
    formatter.locale = Locale.current
    formatter.numberStyle = .currency
    
    if let number = Double(self) {
      return formatter.string(from: NSNumber(value: number))
    }
    
    return nil
  }
}
