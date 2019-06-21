//
//  Data+Mass.swift
//  DataKit
//
//  Created by Eric Lewis on 6/21/19.
//  Copyright © 2019 Eric Lewis, Inc. All rights reserved.
//

import Foundation

public struct Mass: MeasurementCategory {
  public var title = "Mass"
  public var description = ""
  public var icon: String? = "square.stack.3d.up"
  public var measurements = [
    MeasurementData(title: "carats",
                    unit: UnitMass.carats),
    MeasurementData(title: "centigrams",
                    unit: UnitMass.centigrams),
    MeasurementData(title: "decigrams",
                    unit: UnitMass.decigrams),
    MeasurementData(title: "grams",
                    unit: UnitMass.grams),
    MeasurementData(title: "kilograms",
                    unit: UnitMass.kilograms),
    MeasurementData(title: "metricTons",
                    unit: UnitMass.metricTons),
    MeasurementData(title: "micrograms",
                    unit: UnitMass.micrograms),
    MeasurementData(title: "milligrams",
                    unit: UnitMass.milligrams),
    MeasurementData(title: "nanograms",
                    unit: UnitMass.nanograms),
    MeasurementData(title: "ounces",
                    unit: UnitMass.ounces),
    MeasurementData(title: "ouncesTroy",
                    unit: UnitMass.ouncesTroy),
    MeasurementData(title: "picograms",
                    unit: UnitMass.picograms),
    MeasurementData(title: "pounds",
                    unit: UnitMass.pounds),
    MeasurementData(title: "shortTons",
                    unit: UnitMass.shortTons),
    MeasurementData(title: "slugs",
                    unit: UnitMass.slugs),
    MeasurementData(title: "stones",
                    unit: UnitMass.stones),
  ]
  
  public init() {}
}
