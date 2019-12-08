//
//  CameraTopRouter.swift
//  FunctionOperationCheck
//
//  Created by 齊藤萌 on 2019/12/07.
//  Copyright © 2019 Swift-Biginners. All rights reserved.
//

import Foundation
import UIKit

/// CameraTop の Router（プロトコル）
protocol CameraTopWireframe {
    var viewController: CameraTopViewController? { get set }
    func initializerModule()
}

/// CameraTop の Router
class CameraTopRouter: CameraTopWireframe {

    /// CameraViewController
    weak var viewController: CameraTopViewController?

    required init(viewController: UIViewController) {
        self.viewController = viewController as? CameraTopViewController
    }

    /// Interactor, Presenter を初期化し、viewController に presenter をセットする
    func initializerModule() {
        let interactor = CameraTopInteractor()
        let presenter = CameraTopPresenter(interactor: interactor, router: self)

        self.viewController?.presenter = presenter
    }
}