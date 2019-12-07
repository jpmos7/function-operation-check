//
//  MapViewController.swift
//  FunctionOperationCheck
//
//  Created by 齊藤萌 on 2019/12/03.
//  Copyright © 2019 Swift-Biginners. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    var presenter: MapPresentation?

    /// 地図を表示するマップビュー
    @IBOutlet weak var mapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // 緯度・軽度を設定
        guard let location = presenter?.callSetLatitudeAndLongitudeOfTokyoStation() else {
            fatalError()
        }
        // マップビューに緯度・軽度を設定
        mapView.setCenter(location, animated:true)

        // 縮尺を設定
        let regionBeforeSetScale = mapView.region
        guard let regionAfterSetScale = presenter?.callSetScale(region: regionBeforeSetScale, location: location) else {
            fatalError()
        }
        // マップビューに縮尺を設定
        mapView.setRegion(regionAfterSetScale, animated:true)
    }
}
