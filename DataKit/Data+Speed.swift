//
//  Data+Speed.swift
//  DataKit
//
//  Created by Eric Lewis on 6/21/19.
//  Copyright © 2019 Eric Lewis, Inc. All rights reserved.
//

import Foundation

public struct Speed : MeasurementCategory {
  public var title = "Speed"
  public var description = ""
  public var icon: String? = "hare"
  public var measurements: [MeasurementData] = [
    MeasurementData(title: "kilometersPerHour", unit: UnitSpeed.kilometersPerHour),
    MeasurementData(title: "knots", unit: UnitSpeed.knots),
    MeasurementData(title: "metersPerSecond", unit: UnitSpeed.metersPerSecond),
    MeasurementData(title: "milesPerHour", unit: UnitSpeed.milesPerHour),
  ]
  
  public init() {}
}
