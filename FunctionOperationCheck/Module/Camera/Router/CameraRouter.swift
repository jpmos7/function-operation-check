//
//  CameraRouter.swift
//  FunctionOperationCheck
//
//  Created by 齊藤萌 on 2019/12/07.
//  Copyright © 2019 Swift-Biginners. All rights reserved.
//

import Foundation
import UIKit

/// Camera の Router（プロトコル）
protocol CameraWireframe {
    var viewController: CameraViewController? { get set }
    func initializerModule()
}

/// Camera の Router
class CameraRouter: CameraWireframe {

    /// locationViewController
    weak var viewController: CameraViewController?

    required init(viewController: UIViewController) {
        self.viewController = viewController as? CameraViewController
    }

    /// Interactor, Presenter を初期化し、viewController に presenter をセットする
    func initializerModule() {
        let interactor = CameraInteractor()
        let presenter = CameraPresenter(interactor: interactor, router: self)

        self.viewController?.presenter = presenter
    }
}
