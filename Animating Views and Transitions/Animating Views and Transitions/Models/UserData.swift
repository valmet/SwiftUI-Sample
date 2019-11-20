//
//  UserData.swift
//  ComposingComplexInterfaces
//
//  Created by sayaka on 2019/11/19.
//  Copyright © 2019 sayaka. All rights reserved.
//

import Foundation

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
