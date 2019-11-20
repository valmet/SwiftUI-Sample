//
//  LandmarkRow.swift
//  ComposingComplexInterfaces
//
//  Created by sayaka on 2019/11/18.
//  Copyright © 2019 sayaka. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    @EnvironmentObject var userData: UserData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        userData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }

    var body: some View {
        HStack {
            landmark
                .image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            
            if self.userData.landmarks[self.landmarkIndex].isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                    .onTapGesture {
                        self.userData.landmarks[self.landmarkIndex].isFavorite.toggle()
                }
            } else {
                Image(systemName: "star")
                    .foregroundColor(.gray)
                    .onTapGesture {
                    self.userData.landmarks[self.landmarkIndex].isFavorite.toggle()
                }
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
        }.previewLayout(.fixed(width: 300, height: 70))
    }
}
