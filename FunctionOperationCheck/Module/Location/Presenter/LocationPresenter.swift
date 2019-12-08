//
//  LocationPresenter.swift
//  FunctionOperationCheck
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
