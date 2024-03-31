//
//  ModelClass.swift
//  HelloUIView
//
//  Created by Andrew Wu on 2024/3/31.
//

import UIKit

class ModelClass: NSObject {
    static func getCurrentBattery() -> Float {
        return UIDevice.current.batteryLevel
    }
}
