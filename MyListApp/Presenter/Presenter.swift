//
//  Presenter.swift
//  MyListApp
//
//  Created by Melvin John on 22/10/2019.
//  Copyright © 2019 Melvin John. All rights reserved.
//

import SwiftUI
import MyNetworkingPackage

class Presenter: ObservableObject {
    
    @Published var simpleViewModels: [SimpleViewModel] = []
    
    lazy var fetchStuff = FetchStuff(urlPath: "https://api.myjson.com/bins/tzeu5")
    
    func perform() {
        fetchStuff!.fetchStuff { [weak self] (result: Result<[String]>) in
            switch result {
            case .failure:
                break
            case .success(let models):
                self?.simpleViewModels = models.map{.init(value: $0)}
            }
        }
    }
    
}
