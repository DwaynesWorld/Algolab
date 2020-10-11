//
//  Account.swift
//  Algolab
//
//  Created by Kyle Thompson on 6/21/20.
//  Copyright © 2020 Kyle Thompson. All rights reserved.
//

import Foundation

/// Model of information related to an account, including account status,
/// funds available for trade, funds available for withdrawal, and various
/// flags relevant to an account’s ability to trade.
struct Account: Codable {
  let accountBlocked: Bool
  let accountNumber, buyingPower, cash, createdAt: String
  let currency: String
  let daytradeCount: Int
  let daytradingBuyingPower, equity, id, initialMargin: String
  let lastEquity, lastMaintenanceMargin, longMarketValue, maintenanceMargin: String
  let multiplier: String
  let patternDayTrader: Bool
  let portfolioValue, regtBuyingPower, shortMarketValue: String
  let shortingEnabled: Bool
  let sma, status: String
  let tradeSuspendedByUser, tradingBlocked, transfersBlocked: Bool
  
  enum CodingKeys: String, CodingKey {
    case accountBlocked = "account_blocked"
    case accountNumber = "account_number"
    case buyingPower = "buying_power"
    case cash
    case createdAt = "created_at"
    case currency
    case daytradeCount = "daytrade_count"
    case daytradingBuyingPower = "daytrading_buying_power"
    case equity, id
    case initialMargin = "initial_margin"
    case lastEquity = "last_equity"
    case lastMaintenanceMargin = "last_maintenance_margin"
    case longMarketValue = "long_market_value"
    case maintenanceMargin = "maintenance_margin"
    case multiplier
    case patternDayTrader = "pattern_day_trader"
    case portfolioValue = "portfolio_value"
    case regtBuyingPower = "regt_buying_power"
    case shortMarketValue = "short_market_value"
    case shortingEnabled = "shorting_enabled"
    case sma, status
    case tradeSuspendedByUser = "trade_suspended_by_user"
    case tradingBlocked = "trading_blocked"
    case transfersBlocked = "transfers_blocked"
  }
}
