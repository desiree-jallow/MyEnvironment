//
//  ContentView.swift
//  MyEnvironment
//
//  Created by Desiree on 4/28/21.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    var body: some View {
        TabView(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/,
                content:  {
                    HomeScreen().tabItem { Text("Home") }.tag(1)
                    SettingsScreen().tabItem { Text("Settings") }.tag(2)
                })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
