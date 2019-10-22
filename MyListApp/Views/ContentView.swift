//
//  ContentView.swift
//  MyListApp
//
//  Created by Melvin John on 22/10/2019.
//  Copyright © 2019 Melvin John. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var presenter: Presenter = Presenter()
    
    var body: some View {
        NavigationView {
            List(
                presenter.simpleViewModels
            ) {
                Text($0.value)
            }
            .navigationBarTitle(Text("The Gods"))
            .onAppear(perform: presenter.perform)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
