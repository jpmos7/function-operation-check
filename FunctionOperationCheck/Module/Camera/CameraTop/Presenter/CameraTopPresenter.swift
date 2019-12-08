//
//  CameraTopPresenter.swift
//  FunctionOperationCheck
//

import Foundation

/// CameraTop の Presenter（プロトコル）
protocol CameraTopPresentation {

}

/// CameraTop の Presenter
class CameraTopPresenter: CameraTopPresentation {
    var interactor: CameraTopUsecase!
    var router: CameraTopWireframe!

    init(interactor: CameraTopUsecase, router: CameraTopWireframe) {
        self.interactor = interactor
        self.router = router
    }
}
