//
//  CameraTopPresenter.swift
//  FunctionOperationCheck
//
//  Created by 齊藤萌 on 2019/12/07.
//  Copyright © 2019 Swift-Biginners. All rights reserved.
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
