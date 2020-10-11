// View+CornerRadius.swift
//
//  View+CornerRadius.swift
//  Algolab
//
//  Created by Kyle Thompson on 6/21/20.
//  Copyright © 2020 Kyle Thompson. All rights reserved.
//

import SwiftUI

extension View {
  func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
    let shape = RoundedCorner(radius: radius, corners: corners)
    return self.clipShape(shape)
  }
}

