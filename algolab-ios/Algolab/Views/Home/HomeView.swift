//
//  HomeView.swift
//  Algolab
//
//  Created by Kyle Thompson on 6/21/20.
//  Copyright © 2020 Kyle Thompson. All rights reserved.
//

import SwiftUI

struct HomeView: View {
  @ObservedObject private var model = HomeViewModel()
  
  var body: some View {
    NavigationView {
      VStack(alignment: .leading) {
        Text("somethinf")
          .font(.title)
          .foregroundColor(.primary)
        
        Spacer()
      }.navigationBarTitle("Account")
    }
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}

