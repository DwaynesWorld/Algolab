//
//  Date+Extensions.swift
//  Algolab
//
//  Created by Kyle Thompson on 6/24/20.
//  Copyright © 2020 Kyle Thompson. All rights reserved.
//

import Foundation


extension Date {
  var timelyGreeting: String {
    let hour = Calendar.current.component(.hour, from: self)
    
    switch hour {
    case 4..<12 : return NSLocalizedString("Good Morning", comment: "Morning")
    case 12..<17 :  return NSLocalizedString("Good Afternoon", comment: "Afternoon")
    case 17..<20 :  return NSLocalizedString("Good Evening", comment: "Evening")
    default:  return NSLocalizedString("Good Night", comment: "Night")
    }
  }
}
