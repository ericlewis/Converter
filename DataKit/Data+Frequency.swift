//
//  Data+Frequency.swift
//  DataKit
//
//  Created by Eric Lewis on 6/21/19.
//  Copyright © 2019 Eric Lewis, Inc. All rights reserved.
//

import Foundation

public struct Frequency : MeasurementCategory {
  public var title = "Frequency"
  public var description = ""
  public var icon: String? = "waveform"
  public var measurements: [MeasurementData] = [
    MeasurementData(title: "framesPerSecond", unit: UnitFrequency.framesPerSecond),
    MeasurementData(title: "gigahertz", unit: UnitFrequency.gigahertz),
  ]
  
  public init() {}
}
