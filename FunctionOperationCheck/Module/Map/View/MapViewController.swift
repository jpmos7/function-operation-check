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

        // 東京駅の位置情報を設定（緯度: 35.681236 経度: 139.767125）
        let latitude = 35.681236
        let longitude = 139.767125

        // 緯度・軽度を設定
        let location = CLLocationCoordinate2DMake(latitude, longitude)
        // マップビューに緯度・軽度を設定
        mapView.setCenter(location, animated:true)

        // 縮尺を設定
        var region = mapView.region
        region.center = location
        region.span.latitudeDelta = 0.02
        region.span.longitudeDelta = 0.02
        // マップビューに縮尺を設定
        mapView.setRegion(region,animated:true)
    }
}
