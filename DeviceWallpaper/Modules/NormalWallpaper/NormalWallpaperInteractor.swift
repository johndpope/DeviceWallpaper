//
//  NormalWallpaperInteractor.swift
//  DeviceWallpaper
//
//  Created by Kensuke Hoshikawa on 2017/04/13.
//  Copyright © 2017年 star__hoshi. All rights reserved.
//

import Foundation

final class NormalWallpaperInteractor: NormalWallpaperUseCase {
    weak var output: NormalWallpaperInteractorOutput!
    var datamanager: NormalWallpaperDataManagerInputProtocol?

    func retrieveDeviceModel() {
        datamanager?.retrieve()
    }
}

extension NormalWallpaperInteractor: NormalWallpaperDataManagerOutputProtocol {
    func onRetrieved(_ deviceModel: DeviceModel) {
        output.didRetrieve(deviceModel)
    }
}
