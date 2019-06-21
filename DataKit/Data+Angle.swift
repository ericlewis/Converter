//
//  Data+Angle.swift
//  DataKit
//
//  Created by Eric Lewis on 6/21/19.
//  Copyright © 2019 Eric Lewis, Inc. All rights reserved.
//

import Foundation

public struct Angle : MeasurementCategory {
  public var title = "Angle"
  public var description = ""
  public var icon: String? = "triangle"
  public var measurements: [MeasurementData] = [
    MeasurementData(title: "arcMinutes", unit: UnitAngle.arcMinutes),
    MeasurementData(title: "arcSeconds", unit: UnitAngle.arcSeconds),
    MeasurementData(title: "degrees", unit: UnitAngle.degrees),
    MeasurementData(title: "gradians", unit: UnitAngle.gradians),
    MeasurementData(title: "radians", unit: UnitAngle.radians),
    MeasurementData(title: "revolutions", unit: UnitAngle.revolutions),
  ]
  
  public init() {}
}
