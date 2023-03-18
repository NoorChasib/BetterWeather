//
//  ContentView.swift
//  BetterWeather
//
//  Created by Noor Chasib on 2023-03-17.
//

import SwiftUI

struct ContentView: View {
   @StateObject var locationManager = LocationManager()

   var body: some View {
      VStack {
         WelcomeView()
            .environmentObject(locationManager)
      }
      .background(Color(hue: 0.624, saturation: 1.0, brightness: 1.0))
      .preferredColorScheme(.dark)
   }
}

struct ContentView_Previews: PreviewProvider {
   static var previews: some View {
      ContentView()
   }
}
