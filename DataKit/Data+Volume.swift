//
//  Data+Volume.swift
//  DataKit
//
//  Created by Eric Lewis on 6/21/19.
//  Copyright © 2019 Eric Lewis, Inc. All rights reserved.
//

import Foundation

public struct Volume : MeasurementCategory {
  public var title = "Volume"
  public var description = ""
  public var icon: String? = "globe"
  public var measurements: [MeasurementData] = [
    MeasurementData(title: "acreFeet", unit: UnitVolume.acreFeet),
    MeasurementData(title: "bushels", unit: UnitVolume.bushels),
    MeasurementData(title: "centiliters", unit: UnitVolume.centiliters),
    MeasurementData(title: "cubicCentimeters", unit: UnitVolume.cubicCentimeters),
    MeasurementData(title: "cubicDecimeters", unit: UnitVolume.cubicDecimeters),
  ]
  
  public init() {}
}
