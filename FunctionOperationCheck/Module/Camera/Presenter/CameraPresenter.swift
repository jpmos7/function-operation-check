//
//  CameraPresenter.swift
//  FunctionOperationCheck
//
//  Created by 齊藤萌 on 2019/12/07.
//  Copyright © 2019 Swift-Biginners. All rights reserved.
//

import Foundation

/// Camera の Presenter（プロトコル）
protocol CameraPresentation {

}

/// Camera の Presenter
class CameraPresenter: CameraPresentation {
    var interactor: CameraUsecase!
    var router: CameraWireframe!

    init(interactor: CameraUsecase, router: CameraWireframe) {
        self.interactor = interactor
        self.router = router
    }
}
