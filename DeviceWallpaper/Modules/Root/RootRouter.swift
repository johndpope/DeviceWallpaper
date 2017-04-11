//
//  RootRouter.swift
//  DeviceWallpaper
//
//  Created by Kensuke Hoshikawa on 2017/04/11.
//  Copyright © 2017年 star__hoshi. All rights reserved.
//

import Foundation
import UIKit.UIWindow

protocol RootWireframe: class {
    func presentArticlesScreen(in window: UIWindow)
}

final class RootRouter: RootWireframe {
    func presentArticlesScreen(in window: UIWindow) {
        window.makeKeyAndVisible()
        window.rootViewController = CategoriesRouter.assembleModule()
    }
}
