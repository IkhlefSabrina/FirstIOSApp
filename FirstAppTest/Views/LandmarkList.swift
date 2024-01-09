//
//  LandmarkList.swift
//  FirstAppTest
//
//  Created by IKHLEF Sabrina on 09/01/2024.
//
// landmarks est l'array dans le file ModelData
import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = true // State alway private !
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter {landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    var body: some View {
        NavigationSplitView{
            List(filteredLandmarks) {landmark in
                NavigationLink{
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail:{
            Text("Select a Landmark")
        }
    }
}
// landmark importer dans LandmarkDetail+row
#Preview {
    LandmarkList()
}
