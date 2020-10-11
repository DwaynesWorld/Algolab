//
//  AccountAPI.swift
//  Algolab
//
//  Created by Kyle Thompson on 6/21/20.
//  Copyright © 2020 Kyle Thompson. All rights reserved.
//

import Moya

/// A service for retrieving `Account` information.
enum AccountAPI {
  case get
}

extension AccountAPI: TargetType {
  /// Provides the base url for making api request
  /// - ToDo: Allow for Live & Paper trading environment
  var baseURL: URL {
    return URL(string: Constants.alpacaPaperTradingEndpoint)!
  }
  
  /// The subpath of the request
  var path: String {
    switch self {
    case .get:
      return "/v2/account"
    }
  }
  
  /// The HTTP method of the request
  var method: Method {
    switch self {
    case .get:
      return .get
    }
  }
  
  /// The HTTP headers of the request
  var headers: [String : String]? {
    switch self {
    case .get:
      return nil
    }
  }
  
  // Specific parameters to be added to the request
  var task: Task {
    switch self {
    case .get:
      return .requestPlain
    }
  }
  
  var sampleData: Data {
    switch self {
    case .get:
      return """
      {
      "account_blocked": False,
      "account_number": "010203ABCD",
      "buying_power": "262113.632",
      "cash": "-23140.2",
      "created_at": "2019-06-12T22:47:07.99658Z",
      "currency": "USD",
      "daytrade_count": 0,
      "daytrading_buying_power": "262113.632",
      "equity": "103820.56",
      "id": "e6fe16f3-64a4-4921-8928-cadf02f92f98",
      "initial_margin": "63480.38",
      "last_equity": "103529.24",
      "last_maintenance_margin": "38000.832",
      "long_market_value": "126960.76",
      "maintenance_margin": "38088.228",
      "multiplier": "4",
      "pattern_day_trader": False,
      "portfolio_value": "103820.56",
      "regt_buying_power": "80680.36",
      "short_market_value": "0",
      "shorting_enabled": True,
      "sma": "0",
      "status": "ACTIVE",
      "trade_suspended_by_user": False,
      "trading_blocked": False,
      "transfers_blocked": False
      }
      """.utf8Encoded
    }
  }
}
