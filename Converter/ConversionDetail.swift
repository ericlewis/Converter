//
//  Converter.swift
//  Converter
//
//  Created by Eric Lewis on 6/20/19.
//  Copyright © 2019 Eric Lewis, Inc. All rights reserved.
//

import SwiftUI
import DataKit

enum Filter {
  case all
  case selected
}

public struct SelectoTron : SelectionManager {
  public typealias SelectionValue = String
  static let key = "keyy"
  var selected: Set = [""]
  
  public mutating func select(_ value: String) {
    selected.insert(value)
    UserDefaults.standard.set(value, forKey: SelectoTron.key + value)
  }
  
  public mutating func deselect(_ value: String) {
    selected.remove(value)
    UserDefaults.standard.removeObject(forKey: SelectoTron.key + value)
  }
  
  public func isSelected(_ value: String) -> Bool {
    if selected.contains(value) {
      return true
    }
    
    return UserDefaults.standard.value(forKey: SelectoTron.key + value) != nil
  }
  
  public init() {}
}

struct Converter : View {
  var title: String
  var measurements: [MeasurementData]
  
  @State var input = "0"
  @State var selectedTitle: String = nil
  @State var selected: Dimension = nil
  @State var filter = Filter.all
  
  // allow the creation of sensible defaults for this... somehow
  @State var selection = SelectoTron()
  
  var body: some View {
    List(selection: $selection) {
      SegmentedControl(selection: $filter) {
        Text("All").tag(Filter.all)
        Text("Selected").tag(Filter.selected)
      }
      if selected != nil && selectedTitle != nil {
        HStack {
          Text(selectedTitle!)
            .font(.largeTitle)
          Spacer()
          TextField($input)
            .font(.largeTitle)
            .multilineTextAlignment(.trailing)
        }
      }
      ForEach(measurements.identified(by: \.title).filter { measurement in
        if self.filter == .selected {
          return self.selection.isSelected(measurement.id)
        }
        
        return true
      }) {
        MeasurementCell(title: $0.title,
                        unit: $0.unit,
                        selectedTitle: self.$selectedTitle,
                        selectedUnit: self.$selected,
                        input: self.$input)
        }.onMove { _, _ in
          // might need a way to handle this
      }
      }
      .navigationBarTitle(Text(title), displayMode: .large)
      .navigationBarItems(trailing: EditButton())
  }
}

struct MeasurementCell : View {
  var title: String
  var unit: Dimension
  @Binding var selectedTitle: String?
  @Binding var selectedUnit: Dimension?
  @Binding var input: String
  
  var body: some View {
    let cleanInput = Double($input.value.filter("01234567890.".contains)) ?? 0
    
    return Button(action: {
      if let selectedUnit = self.$selectedUnit.value {
        let mer = Measurement(value: cleanInput,
                              unit: selectedUnit).converted(to: self.unit).value
        self.$input.value = String(mer)
      }
      
      self.$selectedTitle.value = self.title
      self.$selectedUnit.value = self.unit
    }) {
      HStack {
        Text(title)
        Spacer()
        if $selectedUnit.value != nil {
          Text(Measurement(value: cleanInput,
                           unit: $selectedUnit.value!).converted(to: unit).description)
        } else {
          Text(Measurement(value: cleanInput,
                           unit: unit).description)
        }
      }
    }
    
  }
}
