//
//  ContentView.swift
//  Animating Views and Transitions
//
//  Created by sayaka on 2019/11/20.
//  Copyright © 2019 sayaka. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            HStack {
                NavigationLink(destination: HikeView(hike: hikeData[0])) {
                    Text("Hello, World!")
                }
            }.navigationBarTitle(Text("animation"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
