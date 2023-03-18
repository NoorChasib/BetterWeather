//
//  WelcomeView.swift
//  BetterWeather
//
//  Created by Noor Chasib on 2023-03-17.
//

import CoreLocationUI
import SwiftUI

struct WelcomeView: View {
   @EnvironmentObject var LocationManager: LocationManager

   var body: some View {
      VStack {
         VStack {
            Text("Welcome to the Weather App")
               .bold()
               .font(.title)
            Text("Please share your current location to show the weather in your current area")
               .padding()
         }
         .multilineTextAlignment(.center)
         .padding()

         LocationButton(.shareCurrentLocation) {
            LocationManager.requestLocation()
         }
         .cornerRadius(30)
         .symbolVariant(.fill)
         .foregroundColor(.white)
      }
      .frame(maxWidth: .infinity, maxHeight: .infinity)
   }
}

struct WelcomeView_Previews: PreviewProvider {
   static var previews: some View {
      WelcomeView()
   }
}
