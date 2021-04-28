//
//  HomeScreen.swift
//  MyEnvironment
//
//  Created by Desiree on 4/28/21.
//

import SwiftUI

struct HomeScreen: View {
    @EnvironmentObject var selectedTheme: SelectedTheme
    var body: some View {
        VStack {
            Text("HOME SCREEN")
                .font(selectedTheme.theme.primaryFont)
                .foregroundColor(selectedTheme.theme.mainColor)
            Text("This screen has home stuff")
                .font(selectedTheme.theme.secondaryFont)
                .foregroundColor(selectedTheme.theme.accentColor)
                
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen().environmentObject(MyEnvironmentApp.selectedTheme)
    }
}
