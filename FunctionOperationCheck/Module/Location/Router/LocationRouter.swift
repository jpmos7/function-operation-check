//
//  LocationRouter.swift
//  FunctionOperationCheck
//

import Foundation
import UIKit

/// Location の Router（プロトコル）
protocol LocationWireframe {
    var viewController: LocationViewController? { get set }
    func initializerModule()
}

/// Location の Router
class LocationRouter: LocationWireframe {

    /// locationViewController
    weak var viewController: LocationViewController?

    required init(viewController: UIViewController) {
        self.viewController = viewController as? LocationViewController
    }

    /// Interactor, Presenter を初期化し、viewController に presenter をセットする
    func initializerModule() {
        let interactor = LocationInteractor()
        let presenter = LocationPresenter(interactor: interactor, router: self)

        self.viewController?.presenter = presenter
    }
}
