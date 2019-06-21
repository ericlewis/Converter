//
//  Data+Energy.swift
//  DataKit
//
//  Created by Eric Lewis on 6/21/19.
//  Copyright © 2019 Eric Lewis, Inc. All rights reserved.
//

import Foundation

public struct Energy : MeasurementCategory {
  public var title = "Energy"
  public var description = ""
  public var icon: String? = "bolt"
  public var measurements: [MeasurementData] = [
    MeasurementData(title: "calories", unit: UnitEnergy.calories),
    MeasurementData(title: "joules", unit: UnitEnergy.joules),
    MeasurementData(title: "kilocalories", unit: UnitEnergy.kilocalories),
    MeasurementData(title: "kilojoules", unit: UnitEnergy.kilojoules),
    MeasurementData(title: "kilowattHours", unit: UnitEnergy.kilowattHours),
  ]
  
  public init() {}
}
