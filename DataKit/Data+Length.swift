//
//  Data+Length.swift
//  DataKit
//
//  Created by Eric Lewis on 6/21/19.
//  Copyright © 2019 Eric Lewis, Inc. All rights reserved.
//

import Foundation

public struct Length: MeasurementCategory {
  public var title = "Length"
  public var description = ""
  public var icon: String? = "arrow.left.and.right"
  public var measurements = [
    MeasurementData(title: "feet",
                    unit: UnitLength.feet),
    MeasurementData(title: "meters",
                    unit: UnitLength.meters),
    MeasurementData(title: "centimeters",
                    unit: UnitLength.centimeters),
    MeasurementData(title: "decimeters",
                    unit: UnitLength.decimeters),
    MeasurementData(title: "astronomicalUnits",
                    unit: UnitLength.astronomicalUnits),
    MeasurementData(title: "decameters",
                    unit: UnitLength.decameters),
    MeasurementData(title: "fathoms",
                    unit: UnitLength.fathoms),
    MeasurementData(title: "hectometers",
                    unit: UnitLength.hectometers),
    MeasurementData(title: "furlongs",
                    unit: UnitLength.furlongs),
    MeasurementData(title: "inches",
                    unit: UnitLength.inches),
    MeasurementData(title: "kilometers",
                    unit: UnitLength.kilometers),
    MeasurementData(title: "lightyears",
                    unit: UnitLength.lightyears),
    MeasurementData(title: "megameters",
                    unit: UnitLength.megameters),
    MeasurementData(title: "micrometers",
                    unit: UnitLength.micrometers),
    MeasurementData(title: "miles",
                    unit: UnitLength.miles),
    MeasurementData(title: "millimeters",
                    unit: UnitLength.millimeters),
    MeasurementData(title: "nanometers",
                    unit: UnitLength.nanometers),
    MeasurementData(title: "nauticalMiles",
                    unit: UnitLength.nauticalMiles),
    MeasurementData(title: "parsecs",
                    unit: UnitLength.parsecs),
  ]
  
  public init() {}
}
