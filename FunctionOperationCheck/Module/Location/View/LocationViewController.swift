//
//  LocationViewController.swift
//  FunctionOperationCheck
//
//  Created by 齊藤萌 on 2019/12/07.
//  Copyright © 2019 Swift-Biginners. All rights reserved.
//

import UIKit
import CoreLocation

/// Location の VIew
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

    /// ロケーションマネージャ
    var locationManager: CLLocationManager!

    override func viewDidLoad() {
        super.viewDidLoad()

        // ラベルに初期値を設定する
        latitude.text = "デフォルト"
        longitude.text = "デフォルト"

        // ロケーションマネージャのセットアップ
        setupLocationManager()
    }

    /// "位置情報を取得"ボタンを押下した際、位置情報をラベルに反映する
    /// - Parameter sender: "位置情報を取得"ボタン
    @IBAction func getLocationInfo(_ sender: Any) {
        self.latitude.text = latitudeNow
        self.longitude.text = longitudeNow
    }

    /// ロケーションマネージャのセットアップ
    func setupLocationManager() {
        locationManager = CLLocationManager()

        // 権限をリクエスト
        guard let locationManager = locationManager else { return }
        locationManager.requestWhenInUseAuthorization()

        // マネージャの設定
        let status = CLLocationManager.authorizationStatus()
        if status == .authorizedWhenInUse {
            locationManager.delegate = self
            locationManager.startUpdatingLocation()
        }
    }
}

extension LocationViewController: CLLocationManagerDelegate {

    /// 位置情報が更新された際、位置情報を格納する
    /// - Parameters:
    ///   - manager: ロケーションマネージャ
    ///   - locations: 位置情報
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations.first
        let latitude = location?.coordinate.latitude
        let longitude = location?.coordinate.longitude
        // 位置情報を格納する
        self.latitudeNow = String(latitude!)
        self.longitudeNow = String(longitude!)
    }
}
