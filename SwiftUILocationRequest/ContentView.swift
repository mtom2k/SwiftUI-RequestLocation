//
//  ContentView.swift
//  SwiftUILocationRequest
//
//  Created by Muhannad on 6/19/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var locationManager = LocationManager.shared
    
    var body: some View {
        Group {
            if locationManager.userLocation == nil {
                LocationRequestView()
            }
            else if let location = locationManager.userLocation {
                Text("Latitude: \(location.coordinate.latitude)\nLongitude: \(location.coordinate.longitude)")
                    .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
