//
//  MapPresenter.swift
//  FunctionOperationCheck
//
//  Created by 齊藤萌 on 2019/12/03.
//  Copyright © 2019 Swift-Biginners. All rights reserved.
//

import Foundation
import MapKit

/// Map の Presenter（プロトコル）
protocol MapPresentation {
    /// interactor の setLatitudeAndLongitudeOfTokyoStation メソッドの結果を取得する
    func callSetLatitudeAndLongitudeOfTokyoStation() -> CLLocationCoordinate2D

    /// interactor の setScale メソッドの結果を取得する
    /// - Parameters:
    ///   - region: 縮尺領域
    ///   - location: 位置情報
    func callSetScale(region: MKCoordinateRegion, location: CLLocationCoordinate2D) -> MKCoordinateRegion
}

/// Map の Presenter
class MapPresenter: MapPresentation {

    var interactor: MapUsecase!
    var router: MapWireframe!

    init(interactor: MapInteractor, router: MapWireframe) {
        self.interactor = interactor
        self.router = router
    }

    /// interactor の setLatitudeAndLongitudeOfTokyoStation メソッドの結果を取得する
    func callSetLatitudeAndLongitudeOfTokyoStation() -> CLLocationCoordinate2D {
        return interactor.setLatitudeAndLongitudeOfTokyoStation()
    }

    /// interactor の setScale メソッドの結果を取得する
    /// - Parameters:
    ///   - region: 縮尺領域
    ///   - location: 位置情報
    func callSetScale(region: MKCoordinateRegion, location: CLLocationCoordinate2D) -> MKCoordinateRegion {
        return interactor.setScale(regionBeforeSetScale: region, location: location)
    }
}
