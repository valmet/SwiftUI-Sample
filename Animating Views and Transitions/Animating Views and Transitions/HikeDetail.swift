//
//  HikeDetail.swift
//  Animating Views and Transitions
//
//  Created by sayaka on 2019/11/20.
//  Copyright © 2019 sayaka. All rights reserved.
//

import SwiftUI

struct HikeDetail: View {
    var hike: Hike
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct HikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetail(hike: hikeData[0])
    }
}
