//
//  Landmark.swift
//  FirstAppTest
//
//  Created by IKHLEF Sabrina on 08/01/2024.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
//    You make the property private because users of the Landmarks structure care only about the image itself.
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    
//    Compute a locationCoordinate property that’s useful for interacting with the MapKit framework.
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude : coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable{
        var latitude: Double
        var longitude: Double
    }
    
}

