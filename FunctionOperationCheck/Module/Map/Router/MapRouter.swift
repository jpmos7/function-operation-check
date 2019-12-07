//
//  MapRouter.swift
//  FunctionOperationCheck
//
//  Created by 齊藤萌 on 2019/12/03.
//  Copyright © 2019 Swift-Biginners. All rights reserved.
//

import Foundation
import UIKit

/// Map の Router（プロトコル）
protocol MapWireframe {
    /// MapViewController
    var viewController: MapViewController? { get set }
    /// Interactor, Presenter を初期化し、viewController に presenter をセットする
    func initializerModule()
}

/// Map の Router
class MapRouter: MapWireframe {

    /// MapViewController
    weak var viewController: MapViewController?

    required init(viewController: UIViewController) {
        self.viewController = viewController as? MapViewController
    }

    /// Interactor, Presenter を初期化し、viewController に presenter をセットする
    func initializerModule() {
        let interactor = MapInteractor()
        let presenter = MapPresenter(interactor: interactor, router: self)

        self.viewController?.presenter = presenter
    }
}
