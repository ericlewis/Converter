//
//  Data+Pressure.swift
//  DataKit
//
//  Created by Eric Lewis on 6/21/19.
//  Copyright © 2019 Eric Lewis, Inc. All rights reserved.
//

import Foundation

public struct Pressure : MeasurementCategory {
  public var title = "Pressure"
  public var description = ""
  public var icon: String? = "rectangle.compress.vertical"
  public var measurements: [MeasurementData] = [
    MeasurementData(title: "bars", unit: UnitPressure.bars),
    MeasurementData(title: "gigapascals", unit: UnitPressure.gigapascals),
  ]
  
  public init() {}
}
