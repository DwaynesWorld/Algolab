// ContentView.swift

import SwiftUI

struct MainView: View {
  var body: some View {
    TabView {
      Text("Hello, World!")
        .tabItem {
          Image(systemName: "square.and.pencil")
          Text("Testing")
      }
      
      Text("Hello, World! pt 2")
        .tabItem {
          Image(systemName: "square.and.pencil")
          Text("Testing")
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    MainView()
  }
}
