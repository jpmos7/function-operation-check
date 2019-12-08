//
//  LocationPresenter.swift
//  FunctionOperationCheck
//
//  Created by 齊藤萌 on 2019/12/07.
//  Copyright © 2019 Swift-Biginners. All rights reserved.
//

import Foundation

/// Location の Presenter（プロトコル）
protocol LocationPresentation {

}

/// Location の Presenter
class LocationPresenter: LocationPresentation {
    var interactor: LocationUsecase!
    var router: LocationWireframe!

    init(interactor: LocationUsecase, router: LocationWireframe) {
        self.interactor = interactor
        self.router = router
    }
}
