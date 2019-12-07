//
//  RootRouter.swift
//  FunctionOperationCheck
//
//  Created by 齊藤萌 on 2019/12/03.
//  Copyright © 2019 Swift-Biginners. All rights reserved.
//

import Foundation
import UIKit

class RootRouter {

    func presentFirstScreen(in window: UIWindow) {

        // 地図情報
        let mapView = R.storyboard.map.map()
        //mapView?.tabBarItem = UITabBarItem(tabBarSystemItem: ., tag: 1)
        let mapNavigation = UINavigationController(rootViewController: mapView!)

        // 位置情報
        let locationView = R.storyboard.location.location()
        locationView?.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 2)
        let locationNavigation = UINavigationController(rootViewController: locationView!)

        var viewControllers = [UIViewController]()
        viewControllers.append(mapNavigation)
        viewControllers.append(locationNavigation)

        let tabBarController = R.storyboard.tab.tab()

        tabBarController?.setViewControllers(viewControllers, animated: false)

        window.rootViewController = tabBarController
        window.makeKeyAndVisible()
    }
}
