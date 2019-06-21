//
//  ContentView.swift
//  Converter Huge
//
//  Created by Eric Lewis on 6/21/19.
//  Copyright © 2019 Eric Lewis, Inc. All rights reserved.
//

import SwiftUI

// TODO: allow a way to select a "from" unit

struct ContentView : View {
  var body: some View {
    NavigationView {
        ScrollView {
          ForEach(categories.identified(by: \.title)) { cat in
            HStack {
              VStack(alignment: .leading) {
                HStack {
                  Image(systemName: cat.icon ?? "")
                    .imageScale(.medium)
                    .font(.largeTitle)
                  Text(cat.title)
                    .font(.title)
                  Spacer()
                  }
                  .padding(.leading, 90)
                HStack {
                  ForEach(cat.measurements.identified(by: \.title)) { measurement in
                    NavigationButton(destination: DetailView(title: cat.title, selectedUnit: measurement.unit, data: cat.measurements)) {
                        Text(measurement.title)
                        .font(.title)
                        .padding(.all, 50)
                    }
                  }
                  }
                  .padding(.horizontal, 90)
                  .padding(.top, 20)
                  .padding(.bottom, 50)
              }
            }
          }
        }
        .edgesIgnoringSafeArea(.horizontal)
        .navigationBarTitle(Text("Conversions"))
    }
  }
}

struct DetailView : View {
  var title: String
  var selectedUnit: Dimension
  var data: [MeasurementData]
  
  @State var input = "0"
  
  var body: some View {
    let cleanInput = Double($input.value.filter("01234567890.".contains)) ?? 0
    return Group {
      TextField($input).font(.largeTitle).navigationBarTitle(Text(title))
      List(data.identified(by: \.title)) { measurement in
        Button(action: {}) {
          HStack {
            Text(measurement.title)
            Spacer()
            Text(Measurement(value: cleanInput,
                             unit: self.selectedUnit).converted(to: measurement.unit).description)
          }
        }
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
