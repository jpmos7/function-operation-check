//
//  RootRouter.swift
//  FunctionOperationCheck
//
//  Created by 齊藤萌 on 2019/12/03.
//  Copyright © 2019 Swift-Biginners. All rights reserved.
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

        // タブに詰める ViewController を追加する
        var viewControllers = [UIViewController]()
        viewControllers.append(mapNavigation)
        viewControllers.append(locationNavigation)

        // tabBarController に viewControllers をセットする
        let tabBarController = R.storyboard.tab.tab()
        tabBarController?.setViewControllers(viewControllers, animated: false)

        // rootViewController に tabBarController を設定
        window.rootViewController = tabBarController
        // ウィンドウを表示し、キーウィンドウにする
        window.makeKeyAndVisible()
    }
}
