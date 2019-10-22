//
//  SimpleRow.swift
//  MyListApp
//
//  Created by Melvin John on 22/10/2019.
//  Copyright © 2019 Melvin John. All rights reserved.
//


import SwiftUI

struct SimpleRow: View {
    var simpleModel: SimpleModel
    var body: some View {
        Text("\(simpleModel.simpleTitle)")
    }
}
