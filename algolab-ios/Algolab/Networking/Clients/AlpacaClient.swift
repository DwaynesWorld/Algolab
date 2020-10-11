//
//  AlpacaClient.swift
//  Algolab
//
//  Created by Kyle Thompson on 6/21/20.
//  Copyright © 2020 Kyle Thompson. All rights reserved.
//

import Foundation
import Moya
import PromiseKit

protocol AlpacaClient {
  /// Requests a `Decodable` model response from some specified `TargetType`.
  /// - Parameter target: The target action that will be requested.
  /// - Returns: `Promise<Decodable>` that is fulfilled when the request is complete.
  func request<T: TargetType, U: Decodable>(from target: T) -> Promise<U>
}

