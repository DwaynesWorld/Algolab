//
//  AppContainer.swift
//  Algolab
//
//  Created by Kyle Thompson on 6/21/20.
//  Copyright © 2020 Kyle Thompson. All rights reserved.
//

import Foundation
import Swinject

struct AppContainer {
  
  static let `default` = AppContainer()
  private let resolver: Resolver
  
  private init() {
    let container = Container()
    
    container.register(TargetProvider.self) { _ in AlpacaProvider() }
    container.register(AlpacaClient.self) { _ in AlpacaNetworkClient() }
    
    self.resolver = container.synchronize()
  }
  
  func resolve<Service>(_ serviceType: Service.Type) -> Service? {
    return resolver.resolve(serviceType)
  }
}
