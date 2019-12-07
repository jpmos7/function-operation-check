//
//  LocationRouter.swift
//  FunctionOperationCheck
//
//  Created by 齊藤萌 on 2019/12/07.
//  Copyright © 2019 Swift-Biginners. All rights reserved.
//

import Foundation
import UIKit

protocol LocationWireframe {

}

class LocationRouter: LocationWireframe {

    weak var viewController: LocationViewController?

    required init(viewController: UIViewController) {
        self.viewController = viewController as? LocationViewController
    }

    func initializerModule() {
        let interactor = LocationInteractor()
        let presenter = LocationPresenter(interactor: interactor, router: self)

        self.viewController?.presenter = presenter
    }
}
