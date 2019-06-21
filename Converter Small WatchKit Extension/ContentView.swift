//
//  ContentView.swift
//  Converter Small WatchKit Extension
//
//  Created by Eric Lewis on 6/21/19.
//  Copyright © 2019 Eric Lewis, Inc. All rights reserved.
//

import SwiftUI

// TODO: we need a way to select our "from" unit

struct ContentView : View {
  var body: some View {
    ConversionsView()
  }
}

struct ConversionsView : View {
  var body: some View {
    List(categories.identified(by: \.title)) { cat in
      NavigationButton(destination: Converter(title: cat.title, measurements: cat.measurements),
                       isDetail: true,
                       onTrigger: {return true}) {
                        CategoryCell(title: cat.title,
                                     measurementTitles: cat.measurements.map { $0.title },
                                     count: cat.measurements.count,
                                     icon: cat.icon)
      }
    }.navigationBarTitle(Text("Conversions"))
  }
}

struct Converter : View {
  var title: String
  var measurements: [MeasurementData]
  @State var input = "0"
  
  var body: some View {
    VStack {
      TextField($input)
        .multilineTextAlignment(.trailing)
      List(measurements.identified(by: \.title)) {
        ConverterCell(input: self.$input, measurement: $0)
      }
    }.navigationBarTitle(Text(title))
  }
}

struct ConversionCellDetail : View {
  var title: String
  var amount: String
  
  var body: some View {
    Text(amount).lineLimit(10).navigationBarTitle(Text(title))
  }
}

struct ConverterCell : View {
  @Binding var input: String
  var measurement: MeasurementData

  var body: some View {
    let cleanInput = Double($input.value.filter("01234567890.".contains)) ?? 0
    let text = Measurement(value: cleanInput,
                           unit: UnitLength.feet).converted(to: measurement.unit).description
    
    return NavigationButton(destination: ConversionCellDetail(title: measurement.title, amount: text)) {
      VStack(alignment: .leading) {
        Text(text)
        Text(measurement.title)
          .font(.subheadline)
          .color(.secondary)
      }
    }
  }
}

struct CategoryCell : View {
  var title: String
  var measurementTitles: [String]
  var count: Int
  var icon: String?
  
  var body: some View {
    return HStack {
      Image(systemName: icon ?? "arrow.right.arrow.left")
        .padding(.trailing)
      HStack {
        Text(title)
        Spacer()
        Text(String(measurementTitles.count))
      }
    }
  }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
#endif
