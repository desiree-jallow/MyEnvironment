//
//  SettingsScreen.swift
//  MyEnvironment
//
//  Created by Desiree on 4/28/21.
//

import SwiftUI

struct SettingsScreen: View {
    var body: some View {
        VStack {
            Text("SΕΤΤΙNGS SCREEN")
            Text("Change your theme here")
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
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
    }
}