//
//  LocationPresenter.swift
//  FunctionOperationCheck
//
//  Created by 齊藤萌 on 2019/12/07.
//  Copyright © 2019 Swift-Biginners. All rights reserved.
//

import Foundation

protocol LocationPresentation {

}

class LocationPresenter: LocationPresentation {
    weak var view: LocationViewController?
    var interactor: LocationUsecase!
    var router: LocationWireframe!

    init(interactor: LocationUsecase, router: LocationWireframe) {
        self.interactor = interactor
        self.router = router
    }
}
