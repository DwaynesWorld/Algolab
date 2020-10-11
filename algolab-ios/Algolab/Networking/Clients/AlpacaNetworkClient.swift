//
//  AlpacaNetworkClient.swift
//  Algolab
//
//  Created by Kyle Thompson on 6/21/20.
//  Copyright © 2020 Kyle Thompson. All rights reserved.
//

import Foundation
import PromiseKit
import Moya

struct AlpacaNetworkClient: AlpacaClient {
  @Injected var provider: TargetProvider
 
  func request<T: TargetType, U: Decodable>(from target: T) -> Promise<U> {
    return Promise { seal in
      let provider: MoyaProvider<T> = self.provider.build()
      
      provider.request(target, callbackQueue: .global(qos: .background)) { result in
        switch result {
        case let .success(response):
          do {
            let model = try response.filterSuccessfulStatusCodes().map(U.self)
            seal.resolve(model, nil)
          } catch {
            // TODO: Handle errors correctly
            seal.resolve(nil, error)
          }
        case let .failure(error):
          seal.resolve(nil, error)
        }
      }
    }
  }
}
