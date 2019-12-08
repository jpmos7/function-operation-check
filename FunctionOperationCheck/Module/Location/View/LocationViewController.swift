//
//  LocationViewController.swift
//  FunctionOperationCheck
//
//  Created by 齊藤萌 on 2019/12/07.
//  Copyright © 2019 Swift-Biginners. All rights reserved.
//

import UIKit
import CoreLocation

class LocationViewController: UIViewController {

    var presenter: LocationPresentation?

    /// 緯度を表示するラベル
    @IBOutlet weak var latitude: UILabel!
    /// 経度を表示するラベル
    @IBOutlet weak var longitude: UILabel!

    // 緯度
    var latitudeNow: String = ""
    // 経度
    var longitudeNow: String = ""

    var locationManager: CLLocationManager!

    override func viewDidLoad() {
        super.viewDidLoad()

        // ラベルに初期値を設定する
        latitude.text = "デフォルト"
        longitude.text = "デフォルト"

        setupLocationManager()
    }

    /// "位置情報を取得"ボタンを押下した際、実機の位置情報を取得する
    /// - Parameter sender: "位置情報を取得"ボタン
    @IBAction func getLocationInfo(_ sender: Any) {
        self.latitude.text = latitudeNow
        self.longitude.text = longitudeNow
    }

    func setupLocationManager() {
        locationManager = CLLocationManager()

        // 権限をリクエスト
        guard let locationManager = locationManager else { return }
        locationManager.requestWhenInUseAuthorization()

        // マネージャの設定
        let status = CLLocationManager.authorizationStatus()
        if status == .authorizedWhenInUse {
            locationManager.delegate = self
            //locationManager.distanceFilter = 10
            locationManager.startUpdatingLocation()
        }
    }
}

extension LocationViewController: CLLocationManagerDelegate {

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations.first
        let latitude = location?.coordinate.latitude
        let longitude = location?.coordinate.longitude

        self.latitudeNow = String(latitude!)
        self.longitudeNow = String(longitude!)
    }
}
