//
//  SimpleModel.swift
//  MyListApp
//
//  Created by Melvin John on 22/10/2019.
//  Copyright © 2019 Melvin John. All rights reserved.
//

import SwiftUI

struct SimpleModel: Decodable, Identifiable {
    var id: String {
        simpleTitle
    }
    
    let simpleTitle: String
}
