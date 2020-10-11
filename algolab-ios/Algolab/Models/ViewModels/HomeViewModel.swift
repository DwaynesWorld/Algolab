//
//  HomeViewModel.swift
//  Algolab
//
//  Created by Kyle Thompson on 6/21/20.
//  Copyright © 2020 Kyle Thompson. All rights reserved.
//

import Foundation
import SwiftUI
import PromiseKit
import Combine

class HomeViewModel: ObservableObject {
  @Injected private var client: AlpacaClient
  
  @Published private(set) var loading: Bool = false
  @Published private(set) var account: Account? = nil
  
  
  func loadAccount() {
    self.loading = true
    
    firstly {
      client.request(from: AccountAPI.get)
    }.done { (account: Account) in
      self.account = account
      self.loading = false
    }.catch { error in
      print(error)
    }
  }
}
