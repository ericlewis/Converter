//
//  Data.swift
//  Converter
//
//  Created by Eric Lewis on 6/20/19.
//  Copyright © 2019 Eric Lewis, Inc. All rights reserved.
//

import SwiftUI

public protocol MeasurementCategory {
  var title: String {get}
  var description: String {get}
  var measurements: [MeasurementData] {get}
  var icon: String? {get}
}

public protocol MeasurementDataProtocol {
  var title: String {get}
  var unit: Dimension {get}
}

public struct MeasurementData : MeasurementDataProtocol {
  public var title: String
  public var unit: Dimension
  
  public init(title: String, unit: Dimension) {
    self.title = title
    self.unit = unit
  }
}

public let categories: [MeasurementCategory] = [
  Angle(),
  Area(),
  Energy(),
  Frequency(),
  FuelEfficiency(),
  Length(),
  Mass(),
  Power(),
  Pressure(),
  Speed(),
  Volume(),
]
  
