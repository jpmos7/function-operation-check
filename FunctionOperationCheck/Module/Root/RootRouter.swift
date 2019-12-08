//
//  RootRouter.swift
//  FunctionOperationCheck
//

import Foundation
import UIKit

/// 初期画面を呼び出す Router
class RootRouter {

    /// タブ遷移を実装
    /// - Parameter window: ウィンドウ
    func implementTabTransition(in window: UIWindow) {

        // 地図情報
        let mapView = R.storyboard.map.map()
        MapRouter(viewController: mapView!).initializerModule()
        let mapNavigation = UINavigationController(rootViewController: mapView!)

        // 位置情報
        let locationView = R.storyboard.location.location()
        LocationRouter(viewController: locationView!).initializerModule()
        let locationNavigation = UINavigationController(rootViewController: locationView!)

        // カメラ
        let cameraTopView = R.storyboard.cameraTop.cameraTop()
        CameraTopRouter(viewController: cameraTopView!).initializerModule()
        let cameraTopNavigation = UINavigationController(rootViewController: cameraTopView!)

        // タブに詰める ViewController を追加する
        var viewControllers = [UIViewController]()
        viewControllers.append(mapNavigation)
        viewControllers.append(locationNavigation)
        viewControllers.append(cameraTopNavigation)

        // tabBarController に viewControllers をセットする
        let tabBarController = R.storyboard.tab.tab()
        tabBarController?.setViewControllers(viewControllers, animated: false)

        // rootViewController に tabBarController を設定
        window.rootViewController = tabBarController
        // ウィンドウを表示し、キーウィンドウにする
        window.makeKeyAndVisible()
    }
}
