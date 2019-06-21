//
//  Data+Power.swift
//  DataKit
//
//  Created by Eric Lewis on 6/21/19.
//  Copyright © 2019 Eric Lewis, Inc. All rights reserved.
//

import Foundation

public struct Power : MeasurementCategory {
  public var title = "Power"
  public var description = ""
  public var icon: String? = "battery.25"
  public var measurements: [MeasurementData] = [
    MeasurementData(title: "femtowatts", unit: UnitPower.femtowatts),
    MeasurementData(title: "gigawatts", unit: UnitPower.gigawatts),
    MeasurementData(title: "horsepower", unit: UnitPower.horsepower),
    MeasurementData(title: "kilowatts", unit: UnitPower.kilowatts),
    MeasurementData(title: "megawatts", unit: UnitPower.megawatts),
    MeasurementData(title: "microwatts", unit: UnitPower.microwatts),
    MeasurementData(title: "milliwatts", unit: UnitPower.milliwatts),
    MeasurementData(title: "nanowatts", unit: UnitPower.nanowatts),
    MeasurementData(title: "picowatts", unit: UnitPower.picowatts),
    MeasurementData(title: "terawatts", unit: UnitPower.terawatts),
    MeasurementData(title: "watts", unit: UnitPower.watts),
  ]
  
  public init() {}
}
