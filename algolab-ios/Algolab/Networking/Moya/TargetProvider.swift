//
//  ServiceProvider.swift
//  Algolab
//
//  Created by Kyle Thompson on 6/21/20.
//  Copyright © 2020 Kyle Thompson. All rights reserved.
//

import Foundation
import Alamofire
import Moya


protocol TargetProvider {
  func build<T: TargetType>() -> MoyaProvider<T>
}

struct AlpacaProvider: TargetProvider {
  func build<T: TargetType >() -> MoyaProvider<T> { 
    MoyaProvider<T>(plugins: [AlpacaAuthPlugin()])
  }

  private struct AlpacaAuthPlugin: PluginType {
    func prepare(_ request: URLRequest, target: TargetType) -> URLRequest {
      var modifiedRequest = request
      // TODO: AuthProvider should be injected.
      modifiedRequest.addValue(Secrets.alpacaApiKeyId, forHTTPHeaderField: Constants.alpacaApiKeyIdHeader)
      modifiedRequest.addValue(Secrets.alpacaApiKeySecret, forHTTPHeaderField: Constants.alpacaApiSecretKeyHeader)
      return modifiedRequest
    }
  }
}
