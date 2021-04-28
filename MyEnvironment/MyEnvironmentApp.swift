//
//  MyEnvironmentApp.swift
//  MyEnvironment
//
//  Created by Desiree on 4/28/21.
//

import SwiftUI

@main
struct MyEnvironmentApp: App {
    static var selectedTheme = SelectedTheme()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(MyEnvironmentApp.selectedTheme)
        }
    }
}
