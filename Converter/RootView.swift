//
//  ContentView.swift
//  Converter
//
//  Created by Eric Lewis on 6/20/19.
//  Copyright © 2019 Eric Lewis, Inc. All rights reserved.
//

import SwiftUI
import SplitView
import SFSafeSymbols

#if targetEnvironment(UIKitForMac)
let isLargeDevice = true
#else
let isLargeDevice = UIDevice.current.userInterfaceIdiom == .pad
#endif

struct RootView : View {
  @State var sideBarHidden = false
  
  func toggleSidebar() {
    $sideBarHidden.value.toggle()
  }
  
  var detailView: some View {
    NavigationView {
      Text("Select a Conversion to get started")
        .color(.secondary)
        .navigationBarTitle(Text("Welcome"), displayMode: .inline)
        .navigationBarItems(leading: Button(action: toggleSidebar) {
          Image(systemSymbol: .sidebarLeft)
            .imageScale(.large)
        })
    }
  }
  
  var body: some View {
    if isLargeDevice {
      return AnyView(SplitView(master: ConversionsView(), detail: detailView).preferredDisplayMode(sideBarHidden ? .automatic : .allVisible))
    } else {
      return AnyView(ConversionsView())
    }
  }
}

struct Settings : View {
  @Environment(\.isPresented) var isPresented: Binding<Bool>?
  
  var body: some View {
    NavigationView {
      Form {
        Text("Settings")
        }
        .navigationBarTitle(Text("Settings"), displayMode: .inline)
        .navigationBarItems(leading: Button(action: {
          self.isPresented?.value.toggle()
        }) {
          Text("Close")
        })
    }
  }
}

struct SettingsButton : View {
  var body: some View {
    PresentationButton(destination: Settings()) {
      Image(systemSymbol: .gear).imageScale(.large)
    }
  }
}

#if DEBUG
struct RootView_Previews : PreviewProvider {
  static var previews: some View {
    Group {
      RootView()
      RootView()
        .environment(\.colorScheme, .dark)
    }
  }
}
#endif
