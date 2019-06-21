//
//  Data+Area.swift
//  DataKit
//
//  Created by Eric Lewis on 6/21/19.
//  Copyright © 2019 Eric Lewis, Inc. All rights reserved.
//

import Foundation

public struct Area : MeasurementCategory {
  public var title = "Area"
  public var description = ""
  public var icon: String? = "square.on.circle"
  public var measurements: [MeasurementData] = [
    MeasurementData(title: "acres", unit: UnitArea.acres),
    MeasurementData(title: "ares", unit: UnitArea.ares),
    MeasurementData(title: "hectares", unit: UnitArea.hectares),
    MeasurementData(title: "squareCentimeters", unit: UnitArea.squareCentimeters),
    MeasurementData(title: "squareFeet", unit: UnitArea.squareFeet),
    MeasurementData(title: "squareMiles", unit: UnitArea.squareMiles),
  ]
  
  public init() {}
}
