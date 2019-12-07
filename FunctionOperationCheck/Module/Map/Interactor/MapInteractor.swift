//
//  MapInteractor.swift
//  FunctionOperationCheck
//
//  Created by 齊藤萌 on 2019/12/03.
//  Copyright © 2019 Swift-Biginners. All rights reserved.
//

import Foundation
import MapKit

/// Map の Interactor（プロトコル）
protocol  MapUsecase {
    /// 東京駅の緯度・経度を設定する
    func setLatitudeAndLongitudeOfTokyoStation() -> CLLocationCoordinate2D
}

/// Map の Interactor
class MapInteractor: MapUsecase {
    /// 東京駅の緯度・経度を設定する
    func setLatitudeAndLongitudeOfTokyoStation() -> CLLocationCoordinate2D {
        // 東京駅の位置情報を設定（緯度: 35.681236 経度: 139.767125）
        let latitude = 35.681236
        let longitude = 139.767125
        // 緯度・軽度を設定
        return CLLocationCoordinate2DMake(latitude, longitude)
    }
}
