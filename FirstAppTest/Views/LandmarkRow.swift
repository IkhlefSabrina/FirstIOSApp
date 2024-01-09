//
//  LandmarkRow.swift
//  FirstAppTest
//
//  Created by IKHLEF Sabrina on 08/01/2024.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View{
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
        }
    }
}

#Preview {
    Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}

//La preview permet de vérofier indépendémment, dans le script
//LandmarkList, on appelle la fonction dans la boucle des Id...
