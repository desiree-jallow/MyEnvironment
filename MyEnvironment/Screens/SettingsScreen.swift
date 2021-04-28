//
//  SettingsScreen.swift
//  MyEnvironment
//
//  Created by Desiree on 4/28/21.
//

import SwiftUI

struct SettingsScreen: View {
    @EnvironmentObject var selectedTheme: SelectedTheme
    var body: some View {
        VStack {
            Text("SΕΤΤΙNGS SCREEN")
                .font(selectedTheme.theme.primaryFont)
                .foregroundColor(selectedTheme.theme.mainColor)
            Text("Change your theme here")
                .font(selectedTheme.theme.secondaryFont)
                .foregroundColor(selectedTheme.theme.accentColor)
            Button(action: {
                self.selectedTheme.switchThemes()
            }, label: {
                ZStack {
                    Rectangle()
                        .frame(maxHeight: 50)
                    Text("TOGGLE THEME")
                        .foregroundColor(.white)
                }
                .padding(.horizontal, 50)
               
            })
            
        }
    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
            .environmentObject(MyEnvironmentApp.selectedTheme)
    }
}
