//
//  ContentView.swift
//  Converter
//
//  Created by Eric Lewis on 6/20/19.
//  Copyright © 2019 Eric Lewis, Inc. All rights reserved.
//

import SwiftUI
import DataKit

struct ConversionsView : View {  
  var body: some View {
    NavigationView {
      List {
        ForEach(categories.identified(by: \.title)) { cat in
          NavigationButton(destination: Converter(title: cat.title,
                                                  measurements: cat.measurements),
                           isDetail: true,
                           onTrigger: {return true}) {
                            CategoryCell(title: cat.title,
                                         measurementTitles: cat.measurements.map { $0.title },
                                         count: cat.measurements.count,
                                         icon: cat.icon)
          }
          }.onMove { _, _ in
            // might need a way to handle this
        }
        }
        .navigationBarTitle(Text("Conversions"))
        .navigationBarItems(leading: SettingsButton(), trailing: EditButton())
    }
  }
}

struct CategoryCell : View {
  var title: String
  var measurementTitles: [String]
  var count: Int
  var icon: String?
  
  var body: some View {
    let clipBy = 2
    let shuffledTitles = measurementTitles.shuffled()
    let clippedTitles = Array(shuffledTitles.prefix(clipBy))
    let detailText = ListFormatter.localizedString(byJoining: shuffledTitles.count > (clipBy + 1) ? clippedTitles + ["\(shuffledTitles.count - clipBy) others"] : shuffledTitles)
    
    return HStack {
      Image(systemName: icon ?? "arrow.right.arrow.left")
        .imageScale(.large)
        .padding(.trailing)
      VStack(alignment: .leading) {
        Text(title)
          .font(.title)
        Text(detailText)
          .color(.secondary)
      }
    }
  }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
  static var previews: some View {
    Group {
      ConversionsView()
      ConversionsView()
        .environment(\.colorScheme, .dark)
    }
  }
}
#endif
