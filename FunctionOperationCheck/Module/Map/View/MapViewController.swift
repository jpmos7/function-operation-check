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

    @IBOutlet weak var mapView: MKMapView!

    var presenter: MapPresentation?

    override func viewDidLoad() {
        super.viewDidLoad()

        // 緯度・軽度を設定
        let location:CLLocationCoordinate2D
           = CLLocationCoordinate2DMake(35.68154, 139.752498)

        mapView.setCenter(location,animated:true)

        // 縮尺を設定
        var region:MKCoordinateRegion = mapView.region
        region.center = location
        region.span.latitudeDelta = 0.02
        region.span.longitudeDelta = 0.02

        mapView.setRegion(region,animated:true)
    }
}
