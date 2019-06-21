//
//  Data+FuelEfficiency.swift
//  DataKit
//
//  Created by Eric Lewis on 6/21/19.
//  Copyright © 2019 Eric Lewis, Inc. All rights reserved.
//

import Foundation

public struct FuelEfficiency : MeasurementCategory {
  public var title = "Fuel Efficiency"
  public var description = ""
  public var icon: String? = "speedometer"
  public var measurements: [MeasurementData] = [
    MeasurementData(title: "litersPer100Kilometers", unit: UnitFuelEfficiency.litersPer100Kilometers),
    MeasurementData(title: "milesPerGallon", unit: UnitFuelEfficiency.milesPerGallon),
    MeasurementData(title: "milesPerImperialGallon", unit: UnitFuelEfficiency.milesPerImperialGallon),
  ]
  
  public init() {}
}
