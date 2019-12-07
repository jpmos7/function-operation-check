//
//  MapRouter.swift
//  FunctionOperationCheck
//
//  Created by 齊藤萌 on 2019/12/03.
//  Copyright © 2019 Swift-Biginners. All rights reserved.
//

import Foundation
import UIKit

protocol MapWireframe {

}

class MapRouter: MapWireframe {

    weak var viewController: MapViewController?

    required init(viewController: UIViewController) {
        self.viewController = viewController as? MapViewController
    }

    func initializerModule() {
        let interactor = MapInteractor()
        let presenter = MapPresenter(interactor: interactor, router: self)

        self.viewController?.presenter = presenter
    }
}
