//
//  MapPresenter.swift
//  FunctionOperationCheck
//
//  Created by 齊藤萌 on 2019/12/03.
//  Copyright © 2019 Swift-Biginners. All rights reserved.
//

import Foundation

protocol MapPresentation {

}

class MapPresenter: MapPresentation {
    weak var view: MapViewController?
    var interactor: MapUsecase!
    var router: MapWireframe!

    init(interactor: MapInteractor, router: MapWireframe) {
        self.interactor = interactor
        self.router = router
    }
}
