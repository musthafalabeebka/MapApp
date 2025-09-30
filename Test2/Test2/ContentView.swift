//
//  ContentView.swift
//  Test2
//
//  Created by Musthafa Labeeb K A on 30/09/25.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var position: MapCameraPosition = .region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 10.0159, longitude: 76.3419),
            span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        )
    )

    var body: some View {
        VStack {
            Map(position: $position) {
                Marker("Kakkanad", coordinate: CLLocationCoordinate2D(latitude: 10.0159, longitude: 76.3419))
            }
            .frame(height: 300)
            .cornerRadius(12)
            .shadow(radius: 5)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
