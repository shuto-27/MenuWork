//
//  Maps.swift
//  21cm0127_Menu Work
//
//  Created by cmStudent on 2022/07/22.
//

import MapKit
import SwiftUI

struct Maps: View {

    @State private var region: MKCoordinateRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: MapDefaults.latitude, longitude: MapDefaults.longitude),
        span: MKCoordinateSpan(latitudeDelta: CLLocationDegrees(MapDefaults.zoom), longitudeDelta: CLLocationDegrees(MapDefaults.zoom)))
        
    private enum MapDefaults {
        static let latitude = 35.658581
        static let longitude = 139.745433
        static let zoom = 0.5

    }

    var body: some View {
        VStack {
           
            
            Text("lat: \(region.center.latitude), long: \(region.center.longitude). Zoom: \(region.span.latitudeDelta)")
            .font(.caption)
            .padding()
            Map(coordinateRegion: $region,
                interactionModes: .all,
                showsUserLocation: true)
        }
    }
}

