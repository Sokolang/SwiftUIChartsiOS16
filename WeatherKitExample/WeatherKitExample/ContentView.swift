//
//  ContentView.swift
//  WeatherKitExample
//
//  Created by Anzhelika Sokolova on 19.12.2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var weatherKitManager = WeatherKitManager()
    @StateObject var locationDataManager = LocationDataManager()
    
    var body: some View {
        if locationDataManager.authorizationStatus == .authorizedWhenInUse {
            Label(weatherKitManager.temp, systemImage: weatherKitManager.symbol)
                .task {
                    await weatherKitManager.getWeather(latitude: locationDataManager.latitude, longitude: locationDataManager.longitude)
                }
        } else {
            Text("Error Loading Location")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
